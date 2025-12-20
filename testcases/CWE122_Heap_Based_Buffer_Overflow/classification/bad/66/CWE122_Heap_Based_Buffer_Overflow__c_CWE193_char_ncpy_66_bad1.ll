define void @anon0() local_unnamed_addr {
dec_label_pc_1006b:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_100ad, label %dec_label_pc_100a3

dec_label_pc_100a3:                               ; preds = %dec_label_pc_1006b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_100ad:                               ; preds = %dec_label_pc_1006b
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_100d6, label %dec_label_pc_100d1

dec_label_pc_100d1:                               ; preds = %dec_label_pc_100ad
  call void @__stack_chk_fail()
  br label %dec_label_pc_100d6

dec_label_pc_100d6:                               ; preds = %dec_label_pc_100d1, %dec_label_pc_100ad
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1015a:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = add i32 %6, 1
  %8 = inttoptr i64 %4 to ptr
  %9 = call ptr @strncpy(ptr %8, ptr nonnull %5, i32 %7)
  call void @printLine(ptr %8)
  %10 = inttoptr i64 %4 to ptr
  call void @free(ptr %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_101ed, label %dec_label_pc_101e8

dec_label_pc_101e8:                               ; preds = %dec_label_pc_1015a
  call void @__stack_chk_fail()
  br label %dec_label_pc_101ed

dec_label_pc_101ed:                               ; preds = %dec_label_pc_101e8, %dec_label_pc_1015a
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

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

