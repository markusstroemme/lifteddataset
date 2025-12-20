@global_var_30136 = external constant [10 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_12ca3:
  %stack_var_-872 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-872 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_12d01, label %dec_label_pc_12cfc

dec_label_pc_12cfc:                               ; preds = %dec_label_pc_12ca3
  call void @__stack_chk_fail()
  br label %dec_label_pc_12d01

dec_label_pc_12d01:                               ; preds = %dec_label_pc_12cfc, %dec_label_pc_12ca3
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_12e02:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %stack_var_-8 = alloca i64, align 8
  %1 = ptrtoint ptr %stack_var_-8 to i64
  %2 = call i64 @__readfsqword(i64 40)
  %3 = add i64 %0, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %1, -816
  %7 = add i64 %1, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_12e46

dec_label_pc_12e46:                               ; preds = %dec_label_pc_12e02, %dec_label_pc_12e46
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge24.reload to i64
  %9 = mul i64 %8, 8
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 8
  %12 = add i64 %7, %9
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add i64 %8, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 99 to ptr)
  store ptr %15, ptr %storemerge24.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %16, label %dec_label_pc_12e89, label %dec_label_pc_12e46

dec_label_pc_12e89:                               ; preds = %dec_label_pc_12e46, %dec_label_pc_12e89
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %17 = ptrtoint ptr %storemerge3.reload to i64
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %5
  %20 = add i64 %18, %6
  %21 = inttoptr i64 %20 to ptr
  %22 = load i64, ptr %21, align 8
  %23 = inttoptr i64 %19 to ptr
  store i64 %22, ptr %23, align 8
  %24 = add i64 %17, 1
  %25 = inttoptr i64 %24 to ptr
  %26 = icmp ugt ptr %25, inttoptr (i64 99 to ptr)
  store ptr %25, ptr %storemerge3.reg2mem, align 8
  br i1 %26, label %dec_label_pc_12ec6, label %dec_label_pc_12e89

dec_label_pc_12ec6:                               ; preds = %dec_label_pc_12e89
  %27 = inttoptr i64 %5 to ptr
  call void @printStructLine(ptr %27)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %2, %28
  br i1 %29, label %dec_label_pc_12eea, label %dec_label_pc_12ee5

dec_label_pc_12ee5:                               ; preds = %dec_label_pc_12ec6
  call void @__stack_chk_fail()
  br label %dec_label_pc_12eea

dec_label_pc_12eea:                               ; preds = %dec_label_pc_12ee5, %dec_label_pc_12ec6
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_275a6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_30136, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

