define void @anon0() local_unnamed_addr {
dec_label_pc_2427b:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_242d4, label %dec_label_pc_242ac

dec_label_pc_242ac:                               ; preds = %dec_label_pc_2427b
  br i1 %5, label %dec_label_pc_242fa, label %dec_label_pc_242c1

dec_label_pc_242c1:                               ; preds = %dec_label_pc_242ac
  call void @exit(i32 -1)
  unreachable

dec_label_pc_242d4:                               ; preds = %dec_label_pc_2427b
  br i1 %5, label %dec_label_pc_242fa, label %dec_label_pc_242e9

dec_label_pc_242e9:                               ; preds = %dec_label_pc_242d4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_242fa:                               ; preds = %dec_label_pc_242d4, %dec_label_pc_242ac
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-120 to ptr
  %9 = call ptr @strncat(ptr %6, ptr nonnull %8, i32 100)
  call void @printLine(ptr %6)
  call void @free(ptr %3)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_24359, label %dec_label_pc_24354

dec_label_pc_24354:                               ; preds = %dec_label_pc_242fa
  call void @__stack_chk_fail()
  br label %dec_label_pc_24359

dec_label_pc_24359:                               ; preds = %dec_label_pc_24354, %dec_label_pc_242fa
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3e3e1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

