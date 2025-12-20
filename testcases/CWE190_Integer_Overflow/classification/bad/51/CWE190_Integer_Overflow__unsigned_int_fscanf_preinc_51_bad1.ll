@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_8b24e = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_600ae:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8b24e)
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_60111, label %dec_label_pc_6010c

dec_label_pc_6010c:                               ; preds = %dec_label_pc_600ae
  call void @__stack_chk_fail()
  br label %dec_label_pc_60111

dec_label_pc_60111:                               ; preds = %dec_label_pc_6010c, %dec_label_pc_600ae
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_601be:
  %0 = add i32 %data, 1
  call void @printUnsignedLine(i32 %0)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

