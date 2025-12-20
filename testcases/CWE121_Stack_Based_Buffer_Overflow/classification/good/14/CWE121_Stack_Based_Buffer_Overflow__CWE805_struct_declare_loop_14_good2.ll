@global_var_30136 = external constant [10 x i8]
@global_var_3d03c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_101e9:
  %0 = alloca ptr, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = load i32, ptr @global_var_3d03c, align 4
  %5 = icmp eq i32 %4, 5
  %6 = add i64 %2, -816
  %7 = add i64 %2, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_1022d

dec_label_pc_1022d:                               ; preds = %dec_label_pc_1022d, %dec_label_pc_101e9
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %8 = mul i64 %storemerge24.reload, 8
  %9 = add i64 %8, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %7, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_102a3.preheader, label %dec_label_pc_1022d

dec_label_pc_102a3.preheader:                     ; preds = %dec_label_pc_1022d
  %14 = bitcast ptr %stack_var_-1624 to ptr
  %15 = icmp eq i1 %5, false
  %spec.select = select i1 %15, ptr %1, ptr %14
  %16 = ptrtoint ptr %spec.select to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_10270

dec_label_pc_10270:                               ; preds = %dec_label_pc_10270, %dec_label_pc_102a3.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %17 = mul i64 %storemerge3.reload, 8
  %18 = add i64 %17, %16
  %19 = add i64 %17, %6
  %20 = inttoptr i64 %19 to ptr
  %21 = load i64, ptr %20, align 8
  %22 = inttoptr i64 %18 to ptr
  store i64 %21, ptr %22, align 8
  %23 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %23, 100
  store i64 %23, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_102ad, label %dec_label_pc_10270

dec_label_pc_102ad:                               ; preds = %dec_label_pc_10270
  call void @printStructLine(ptr %spec.select)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %3, %24
  br i1 %25, label %dec_label_pc_102d1, label %dec_label_pc_102cc

dec_label_pc_102cc:                               ; preds = %dec_label_pc_102ad
  call void @__stack_chk_fail()
  br label %dec_label_pc_102d1

dec_label_pc_102d1:                               ; preds = %dec_label_pc_102cc, %dec_label_pc_102ad
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

