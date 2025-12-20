define void @anon0() local_unnamed_addr {
dec_label_pc_1f35c:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_1f3b5, label %dec_label_pc_1f38d

dec_label_pc_1f38d:                               ; preds = %dec_label_pc_1f35c
  br i1 %5, label %dec_label_pc_1f3db, label %dec_label_pc_1f3a2

dec_label_pc_1f3a2:                               ; preds = %dec_label_pc_1f38d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1f3b5:                               ; preds = %dec_label_pc_1f35c
  br i1 %5, label %dec_label_pc_1f3db, label %dec_label_pc_1f3ca

dec_label_pc_1f3ca:                               ; preds = %dec_label_pc_1f3b5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1f3db:                               ; preds = %dec_label_pc_1f3b5, %dec_label_pc_1f38d
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-120, i32 100)
  %9 = ptrtoint ptr %3 to i64
  %10 = add i64 %9, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  call void @printLine(ptr %6)
  call void @free(ptr %3)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1f445, label %dec_label_pc_1f440

dec_label_pc_1f440:                               ; preds = %dec_label_pc_1f3db
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f445

dec_label_pc_1f445:                               ; preds = %dec_label_pc_1f440, %dec_label_pc_1f3db
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

