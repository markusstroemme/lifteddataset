define void @anon1() local_unnamed_addr {
dec_label_pc_153c7:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1540b, label %dec_label_pc_15401

dec_label_pc_15401:                               ; preds = %dec_label_pc_153c7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1540b:                               ; preds = %dec_label_pc_153c7
  store i8 0, ptr %2, align 1
  call void @anon0(ptr nonnull %stack_var_-24)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_15433, label %dec_label_pc_1542e

dec_label_pc_1542e:                               ; preds = %dec_label_pc_1540b
  call void @__stack_chk_fail()
  br label %dec_label_pc_15433

dec_label_pc_15433:                               ; preds = %dec_label_pc_1542e, %dec_label_pc_1540b
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_15502:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = ptrtoint ptr %dataPtr to i64
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_15559

dec_label_pc_15559:                               ; preds = %dec_label_pc_15502, %dec_label_pc_15559
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge2.reload to i64
  %5 = add i64 %4, %2
  %6 = add i64 %4, %3
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = inttoptr i64 %5 to ptr
  store i8 %8, ptr %9, align 1
  %10 = add i64 %4, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge2.reg2mem, align 8
  br i1 %12, label %dec_label_pc_15580, label %dec_label_pc_15559

dec_label_pc_15580:                               ; preds = %dec_label_pc_15559
  %13 = add i64 %2, 99
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %15 = bitcast ptr %dataPtr to ptr
  call void @printLine(ptr %15)
  %16 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_155b8, label %dec_label_pc_155b3

dec_label_pc_155b3:                               ; preds = %dec_label_pc_15580
  call void @__stack_chk_fail()
  br label %dec_label_pc_155b8

dec_label_pc_155b8:                               ; preds = %dec_label_pc_155b3, %dec_label_pc_15580
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

