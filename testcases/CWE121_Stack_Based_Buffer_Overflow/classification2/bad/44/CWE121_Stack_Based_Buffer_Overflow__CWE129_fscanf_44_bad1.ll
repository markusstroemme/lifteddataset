@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b68b0 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_263f3:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b68b0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_26462, label %dec_label_pc_2645d

dec_label_pc_2645d:                               ; preds = %dec_label_pc_263f3
  call void @__stack_chk_fail()
  br label %dec_label_pc_26462

dec_label_pc_26462:                               ; preds = %dec_label_pc_2645d, %dec_label_pc_263f3
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

