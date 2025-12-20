@global_var_30136 = external constant [10 x i8]
@global_var_3d038 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f708:
  %0 = alloca ptr, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = load i32, ptr @global_var_3d038, align 4
  %5 = add i64 %2, -816
  %6 = add i64 %2, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_f74b

dec_label_pc_f74b:                                ; preds = %dec_label_pc_f74b, %dec_label_pc_f708
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %7 = mul i64 %storemerge24.reload, 8
  %8 = add i64 %7, %5
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %6, %7
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_f7c1.preheader, label %dec_label_pc_f74b

dec_label_pc_f7c1.preheader:                      ; preds = %dec_label_pc_f74b
  %13 = bitcast ptr %stack_var_-1624 to ptr
  %14 = icmp eq i32 %4, 0
  %spec.select = select i1 %14, ptr %1, ptr %13
  %15 = ptrtoint ptr %spec.select to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_f78e

dec_label_pc_f78e:                                ; preds = %dec_label_pc_f78e, %dec_label_pc_f7c1.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %16 = mul i64 %storemerge3.reload, 8
  %17 = add i64 %16, %15
  %18 = add i64 %16, %5
  %19 = inttoptr i64 %18 to ptr
  %20 = load i64, ptr %19, align 8
  %21 = inttoptr i64 %17 to ptr
  store i64 %20, ptr %21, align 8
  %22 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %22, 100
  store i64 %22, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_f7cb, label %dec_label_pc_f78e

dec_label_pc_f7cb:                                ; preds = %dec_label_pc_f78e
  call void @printStructLine(ptr %spec.select)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %3, %23
  br i1 %24, label %dec_label_pc_f7ef, label %dec_label_pc_f7ea

dec_label_pc_f7ea:                                ; preds = %dec_label_pc_f7cb
  call void @__stack_chk_fail()
  br label %dec_label_pc_f7ef

dec_label_pc_f7ef:                                ; preds = %dec_label_pc_f7ea, %dec_label_pc_f7cb
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

