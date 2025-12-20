@global_var_8ca93 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_81d40 = external constant [3 x i8]

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_b4e5:
  %0 = add i8 %data, 1
  call void @printHexCharLine(i8 %0)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_b515:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_81d40)
  call void @anon1(i8 32)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_b579, label %dec_label_pc_b574

dec_label_pc_b574:                                ; preds = %dec_label_pc_b515
  call void @__stack_chk_fail()
  br label %dec_label_pc_b579

dec_label_pc_b579:                                ; preds = %dec_label_pc_b574, %dec_label_pc_b515
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca93, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

