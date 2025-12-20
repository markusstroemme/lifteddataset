define void @anon1() local_unnamed_addr {
dec_label_pc_2c0f8:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_2c13a, label %dec_label_pc_2c130

dec_label_pc_2c130:                               ; preds = %dec_label_pc_2c0f8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2c13a:                               ; preds = %dec_label_pc_2c0f8
  %8 = inttoptr i64 %5 to ptr
  store i8 0, ptr %8, align 1
  %9 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_2c16a, label %dec_label_pc_2c165

dec_label_pc_2c165:                               ; preds = %dec_label_pc_2c13a
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c16a

dec_label_pc_2c16a:                               ; preds = %dec_label_pc_2c165, %dec_label_pc_2c13a
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_2c221:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = inttoptr i64 %4 to ptr
  %7 = bitcast ptr %stack_var_-120 to ptr
  %8 = call ptr @strncpy(ptr %6, ptr nonnull %7, i32 99)
  %9 = add i64 %4, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  call void @printLine(ptr %6)
  %11 = inttoptr i64 %4 to ptr
  call void @free(ptr %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_2c2bf, label %dec_label_pc_2c2ba

dec_label_pc_2c2ba:                               ; preds = %dec_label_pc_2c221
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c2bf

dec_label_pc_2c2bf:                               ; preds = %dec_label_pc_2c2ba, %dec_label_pc_2c221
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

