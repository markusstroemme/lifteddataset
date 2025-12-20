@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2beb5:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 200)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2bf03, label %dec_label_pc_2bef9

dec_label_pc_2bef9:                               ; preds = %dec_label_pc_2beb5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2bf03:                               ; preds = %dec_label_pc_2beb5
  %4 = bitcast ptr %1 to ptr
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = call ptr @memmove(ptr %1, ptr nonnull %stack_var_-424, i32 400)
  %7 = load i32, ptr %4, align 4
  call void @printIntLine(i32 %7)
  call void @free(ptr %1)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_2bf88, label %dec_label_pc_2bf83

dec_label_pc_2bf83:                               ; preds = %dec_label_pc_2bf03
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bf88

dec_label_pc_2bf88:                               ; preds = %dec_label_pc_2bf83, %dec_label_pc_2bf03
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

