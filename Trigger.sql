Create trigger trg_billingInsert
on Appointments
After Insert
as
Begin
	insert into Billing(patient_id, appointment_id)
	select appointment_id, patient_id
	from inserted;
end;

Create trigger trg_Archive_Billing
on Billing
After Insert
as
Begin
End
