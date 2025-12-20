define void @anon1() local_unnamed_addr {
dec_label_pc_15d34:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_15d67, label %dec_label_pc_15d5d

dec_label_pc_15d5d:                               ; preds = %dec_label_pc_15d34
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15d67:                               ; preds = %dec_label_pc_15d34
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  %4 = ptrtoint ptr %0 to i64
  call void @anon0(i64 %4)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_15e4f:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_15ea3

dec_label_pc_15ea3:                               ; preds = %dec_label_pc_15e4f, %dec_label_pc_15ea3
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %3 = ptrtoint ptr %storemerge1.reload to i64
  %4 = add i64 %3, %myStruct
  %5 = add i64 %3, %2
  %6 = inttoptr i64 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = inttoptr i64 %4 to ptr
  store i8 %7, ptr %8, align 1
  %9 = add i64 %3, 1
  %10 = inttoptr i64 %9 to ptr
  %11 = icmp ugt ptr %10, inttoptr (i64 99 to ptr)
  store ptr %10, ptr %storemerge1.reg2mem, align 8
  br i1 %11, label %dec_label_pc_15eca, label %dec_label_pc_15ea3

dec_label_pc_15eca:                               ; preds = %dec_label_pc_15ea3
  %12 = add i64 %myStruct, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %14 = inttoptr i64 %myStruct to ptr
  call void @printLine(ptr %14)
  %15 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_15f02, label %dec_label_pc_15efd

dec_label_pc_15efd:                               ; preds = %dec_label_pc_15eca
  call void @__stack_chk_fail()
  br label %dec_label_pc_15f02

dec_label_pc_15f02:                               ; preds = %dec_label_pc_15efd, %dec_label_pc_15eca
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

