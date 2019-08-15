require 'report_builder'

# Report folders:
# backup_reports_json
# backup_reports_html
# reports_json
# reports_html

class ReportHelper
  # def report_cleanup
  #   # Delete old backups
  #   `rm -rf backup_reports_json`
  #   `rm -rf backup_reports_html`
  #
  #   # Save new backups
  #   `cp -r reports_json backup_reports_json`
  #   `cp -r reports_html backup_reports_html`
  #
  #   # Delete backed up reports
  #   `rm -rf reports_json`
  #   `rm -rf reports_html`
  #
  #   # Create empty report folders
  #   `mkdir reports_json`
  #   `mkdir reports_html`
  # end

  private def get_report_list
    files = `ls reports/`
    file_list = files.split("\n")
    reports = []
    file_list.each do |file_name|
      reports << file_name if file_name.include? "json"
    end
    p reports
    return reports
  end

  private def get_report_hash
    report_hash = {}
    get_report_list.each do |report_name|
      device = report_name.split(".")[0]
      report_hash[device] = "reports/#{report_name}"
    end
    p report_hash
    return report_hash
  end

  def build_report
    ReportBuilder.configure do |config|
      config.input_path = {}
      get_report_hash.each do |device_name, report_name|
        config.input_path[device_name] = report_name
      end
      config.report_path = 'reports/test_results'
      config.report_types = [:html]
      config.report_title = 'Test Results'
      config.additional_info = {level: 'API', environment: 'DEV'}
      config.color = 'brown'
    end

    ReportBuilder.build_report
  end
end

reporter = ReportHelper.new
reporter.build_report
