@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2b0a8:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2b0f6, label %dec_label_pc_2b0ec

dec_label_pc_2b0ec:                               ; preds = %dec_label_pc_2b0a8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2b0f6:                               ; preds = %dec_label_pc_2b0a8
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  %5 = call ptr @memmove(ptr %1, ptr nonnull %stack_var_-424, i32 400)
  %6 = bitcast ptr %1 to ptr
  %7 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %7)
  call void @free(ptr %1)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_2b160, label %dec_label_pc_2b15b

dec_label_pc_2b15b:                               ; preds = %dec_label_pc_2b0f6
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b160

dec_label_pc_2b160:                               ; preds = %dec_label_pc_2b15b, %dec_label_pc_2b0f6
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

