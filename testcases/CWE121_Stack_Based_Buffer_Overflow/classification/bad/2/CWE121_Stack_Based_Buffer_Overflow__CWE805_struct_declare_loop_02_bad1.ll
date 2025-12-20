@global_var_30136 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_de01:
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca ptr, align 8
  %stack_var_-1224 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store ptr null, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_de3a

dec_label_pc_de3a:                                ; preds = %dec_label_pc_de01, %dec_label_pc_de3a
  %storemerge13.reload = load ptr, ptr %storemerge13.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge13.reload to i64
  %5 = mul i64 %4, 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %3, %5
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add i64 %4, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge13.reg2mem, align 8
  br i1 %12, label %dec_label_pc_deb0.preheader, label %dec_label_pc_de3a

dec_label_pc_deb0.preheader:                      ; preds = %dec_label_pc_de3a
  %13 = ptrtoint ptr %stack_var_-1224 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_de7d

dec_label_pc_de7d:                                ; preds = %dec_label_pc_de7d, %dec_label_pc_deb0.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %14 = mul i64 %storemerge2.reload, 8
  %15 = add i64 %14, %13
  %16 = add i64 %14, %2
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %20, 100
  store i64 %20, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_deba, label %dec_label_pc_de7d

dec_label_pc_deba:                                ; preds = %dec_label_pc_de7d
  %21 = bitcast ptr %stack_var_-1224 to ptr
  call void @printStructLine(ptr nonnull %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_dede, label %dec_label_pc_ded9

dec_label_pc_ded9:                                ; preds = %dec_label_pc_deba
  call void @__stack_chk_fail()
  br label %dec_label_pc_dede

dec_label_pc_dede:                                ; preds = %dec_label_pc_ded9, %dec_label_pc_deba
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

