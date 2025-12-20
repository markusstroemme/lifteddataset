@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a438:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_1a494, label %dec_label_pc_1a46f

dec_label_pc_1a46f:                               ; preds = %dec_label_pc_1a438
  br i1 %5, label %dec_label_pc_1a4b9, label %dec_label_pc_1a48a

dec_label_pc_1a48a:                               ; preds = %dec_label_pc_1a46f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1a494:                               ; preds = %dec_label_pc_1a438
  br i1 %5, label %dec_label_pc_1a4b9, label %dec_label_pc_1a4af

dec_label_pc_1a4af:                               ; preds = %dec_label_pc_1a494
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1a4b9:                               ; preds = %dec_label_pc_1a494, %dec_label_pc_1a46f
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %8 = load i64, ptr %3, align 8
  call void @printLongLongLine(i64 %8)
  call void @free(ptr %3)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_1a524, label %dec_label_pc_1a51f

dec_label_pc_1a51f:                               ; preds = %dec_label_pc_1a4b9
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a524

dec_label_pc_1a524:                               ; preds = %dec_label_pc_1a51f, %dec_label_pc_1a4b9
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

