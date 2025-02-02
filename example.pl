use Excel::Writer::XLSX;

# Create a workbook and a worksheet
my $workbook  = Excel::Writer::XLSX->new('example.xlsx');
my $worksheet = $workbook->add_worksheet();

# Write some numbers to sum
$worksheet->write(0, 0, 10);  # Cell A1
$worksheet->write(1, 0, 20);  # Cell A2
$worksheet->write(2, 0, 30);  # Cell A3

# Add a formula to sum the values
$worksheet->write(3, 0, '=SUM(A1:A3)');  # Cell A4

# Save and close the workbook
$workbook->close();

