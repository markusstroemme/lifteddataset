@global_var_2ef85 = external constant [21 x i8]
@global_var_30136 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_f8fd:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-1648.0.reg2mem = alloca ptr, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_f93a, label %dec_label_pc_f929

dec_label_pc_f929:                                ; preds = %dec_label_pc_f8fd
  call void @printLine(ptr @global_var_2ef85)
  br label %dec_label_pc_f948

dec_label_pc_f93a:                                ; preds = %dec_label_pc_f8fd
  %3 = bitcast ptr %stack_var_-1624 to ptr
  store ptr %3, ptr %stack_var_-1648.0.reg2mem, align 8
  br label %dec_label_pc_f948

dec_label_pc_f948:                                ; preds = %dec_label_pc_f93a, %dec_label_pc_f929
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-1648.0.reload = load ptr, ptr %stack_var_-1648.0.reg2mem, align 8
  %5 = add i64 %4, -816
  %6 = add i64 %4, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_f955

dec_label_pc_f955:                                ; preds = %dec_label_pc_f955, %dec_label_pc_f948
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
  br i1 %exitcond5, label %dec_label_pc_f9cb.preheader, label %dec_label_pc_f955

dec_label_pc_f9cb.preheader:                      ; preds = %dec_label_pc_f955
  %13 = ptrtoint ptr %stack_var_-1648.0.reload to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_f998

dec_label_pc_f998:                                ; preds = %dec_label_pc_f998, %dec_label_pc_f9cb.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %14 = mul i64 %storemerge3.reload, 8
  %15 = add i64 %14, %13
  %16 = add i64 %14, %5
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %20, 100
  store i64 %20, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_f9d5, label %dec_label_pc_f998

dec_label_pc_f9d5:                                ; preds = %dec_label_pc_f998
  call void @printStructLine(ptr %stack_var_-1648.0.reload)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_f9f9, label %dec_label_pc_f9f4

dec_label_pc_f9f4:                                ; preds = %dec_label_pc_f9d5
  call void @__stack_chk_fail()
  br label %dec_label_pc_f9f9

dec_label_pc_f9f9:                                ; preds = %dec_label_pc_f9f4, %dec_label_pc_f9d5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_27317:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_2733a, label %dec_label_pc_2732e

dec_label_pc_2732e:                               ; preds = %dec_label_pc_27317
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_2733a

dec_label_pc_2733a:                               ; preds = %dec_label_pc_2732e, %dec_label_pc_27317
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_27836:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

