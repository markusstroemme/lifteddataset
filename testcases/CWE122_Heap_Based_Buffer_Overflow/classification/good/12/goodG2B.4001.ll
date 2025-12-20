@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2564e:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 400)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_256aa, label %dec_label_pc_25685

dec_label_pc_25685:                               ; preds = %dec_label_pc_2564e
  br i1 %5, label %dec_label_pc_256cf, label %dec_label_pc_256a0

dec_label_pc_256a0:                               ; preds = %dec_label_pc_25685
  call void @exit(i32 -1)
  unreachable

dec_label_pc_256aa:                               ; preds = %dec_label_pc_2564e
  br i1 %5, label %dec_label_pc_256cf, label %dec_label_pc_256c5

dec_label_pc_256c5:                               ; preds = %dec_label_pc_256aa
  call void @exit(i32 -1)
  unreachable

dec_label_pc_256cf:                               ; preds = %dec_label_pc_256aa, %dec_label_pc_25685
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-424, i32 400)
  %8 = bitcast ptr %3 to ptr
  %9 = load i32, ptr %8, align 4
  call void @printIntLine(i32 %9)
  call void @free(ptr %3)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_25738, label %dec_label_pc_25733

dec_label_pc_25733:                               ; preds = %dec_label_pc_256cf
  call void @__stack_chk_fail()
  br label %dec_label_pc_25738

dec_label_pc_25738:                               ; preds = %dec_label_pc_25733, %dec_label_pc_256cf
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_65cd4:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

