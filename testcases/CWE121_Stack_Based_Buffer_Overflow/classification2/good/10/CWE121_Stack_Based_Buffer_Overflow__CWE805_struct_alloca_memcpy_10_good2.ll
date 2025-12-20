@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_e6090 = external local_unnamed_addr global i32
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6c648:
  %storemerge3.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-856 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6c696

dec_label_pc_6c696:                               ; preds = %dec_label_pc_6c696, %dec_label_pc_6c648
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6c6ad, label %dec_label_pc_6c696

dec_label_pc_6c6ad:                               ; preds = %dec_label_pc_6c696
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
  br label %dec_label_pc_6c71d

dec_label_pc_6c71d:                               ; preds = %dec_label_pc_6c71d, %dec_label_pc_6c6ad
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_6c734, label %dec_label_pc_6c71d

dec_label_pc_6c734:                               ; preds = %dec_label_pc_6c71d
  %8 = load i32, ptr @global_var_e6090, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_6c78c, label %dec_label_pc_6c77e

dec_label_pc_6c77e:                               ; preds = %dec_label_pc_6c734
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
  %10 = add i64 %5, %constexpr18
  %11 = and i64 %10, -16
  %12 = bitcast ptr %stack_var_-856 to ptr
  store i64 %11, ptr %12, align 8
  br label %dec_label_pc_6c78c

dec_label_pc_6c78c:                               ; preds = %dec_label_pc_6c77e, %dec_label_pc_6c734
  %13 = ptrtoint ptr %stack_var_-8 to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_6c799

dec_label_pc_6c799:                               ; preds = %dec_label_pc_6c78c, %dec_label_pc_6c799
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge3.reload to i64
  %15 = mul i64 %14, 8
  %16 = add i64 %15, %13
  %17 = add i64 %16, -816
  %18 = inttoptr i64 %17 to ptr
  store i32 0, ptr %18, align 8
  %19 = add i64 %16, -812
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %21 = add i64 %14, 1
  %22 = inttoptr i64 %21 to ptr
  %23 = icmp ugt ptr %22, inttoptr (i64 99 to ptr)
  store ptr %22, ptr %storemerge3.reg2mem, align 8
  br i1 %23, label %dec_label_pc_6c7cf, label %dec_label_pc_6c799

dec_label_pc_6c7cf:                               ; preds = %dec_label_pc_6c799
  %24 = load ptr, ptr %stack_var_-856, align 8
  %25 = bitcast ptr %24 to ptr
  %26 = call ptr @memcpy(ptr %25, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %27 = load ptr, ptr %stack_var_-856, align 8
  call void @printStructLine(ptr %27)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %1, %28
  br i1 %29, label %dec_label_pc_6c811, label %dec_label_pc_6c80c

dec_label_pc_6c80c:                               ; preds = %dec_label_pc_6c7cf
  call void @__stack_chk_fail()
  br label %dec_label_pc_6c811

dec_label_pc_6c811:                               ; preds = %dec_label_pc_6c80c, %dec_label_pc_6c7cf
  ret void
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

