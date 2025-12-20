@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@0 = external global i32
@global_var_1000 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_9467b:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-888 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-888 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_946d7

dec_label_pc_946d7:                               ; preds = %dec_label_pc_946d7, %dec_label_pc_9467b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_946ee, label %dec_label_pc_946d7

dec_label_pc_946ee:                               ; preds = %dec_label_pc_946d7
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_9475e

dec_label_pc_9475e:                               ; preds = %dec_label_pc_9475e, %dec_label_pc_946ee
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_94775, label %dec_label_pc_9475e

dec_label_pc_94775:                               ; preds = %dec_label_pc_9475e
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %constexpr9 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr10 = udiv i128 %constexpr9, 16
  %constexpr11 = trunc i128 %constexpr10 to i64
  %constexpr12 = sext i64 %constexpr11 to i128
  %constexpr13 = mul i128 %constexpr12, 16
  %constexpr14 = trunc i128 %constexpr13 to i64
  %constexpr15 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr16 = and i64 %constexpr14, %constexpr15
  %constexpr17 = sub i64 0, %constexpr16
  %constexpr18 = add i64 %constexpr17, 15
  %9 = add i64 %5, %constexpr18
  %10 = add i64 %8, -816
  %11 = add i64 %8, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_947e1

dec_label_pc_947e1:                               ; preds = %dec_label_pc_947e1, %dec_label_pc_94775
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %12 = mul i64 %storemerge24.reload, 8
  %13 = add i64 %12, %10
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 8
  %15 = add i64 %11, %12
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %17 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_94857.preheader, label %dec_label_pc_947e1

dec_label_pc_94857.preheader:                     ; preds = %dec_label_pc_947e1
  %18 = and i64 %9, -16
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_94824

dec_label_pc_94824:                               ; preds = %dec_label_pc_94824, %dec_label_pc_94857.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %19 = mul i64 %storemerge3.reload, 8
  %20 = add i64 %19, %18
  %21 = add i64 %19, %10
  %22 = inttoptr i64 %21 to ptr
  %23 = load i64, ptr %22, align 8
  %24 = inttoptr i64 %20 to ptr
  store i64 %23, ptr %24, align 8
  %25 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %25, 100
  store i64 %25, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_94861, label %dec_label_pc_94824

dec_label_pc_94861:                               ; preds = %dec_label_pc_94824
  %26 = inttoptr i64 %18 to ptr
  call void @printStructLine(ptr %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %1, %27
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %28, label %dec_label_pc_94885, label %dec_label_pc_94880

dec_label_pc_94880:                               ; preds = %dec_label_pc_94861
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_94885

dec_label_pc_94885:                               ; preds = %dec_label_pc_94880, %dec_label_pc_94861
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_9cdaa:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_bb9d2, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

