@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_66d80:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_66dcb

dec_label_pc_66dcb:                               ; preds = %dec_label_pc_66dcb, %dec_label_pc_66d80
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_66de2, label %dec_label_pc_66dcb

dec_label_pc_66de2:                               ; preds = %dec_label_pc_66dcb
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %8 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_66e4f

dec_label_pc_66e4f:                               ; preds = %dec_label_pc_66e4f, %dec_label_pc_66de2
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %9 = icmp eq i64 %rsp.1.reload, %8
  %10 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %10, ptr %rsp.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_66e66, label %dec_label_pc_66e4f

dec_label_pc_66e66:                               ; preds = %dec_label_pc_66e4f
  call void @anon1(ptr %7)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_66ecc, label %dec_label_pc_66ec7

dec_label_pc_66ec7:                               ; preds = %dec_label_pc_66e66
  call void @__stack_chk_fail()
  br label %dec_label_pc_66ecc

dec_label_pc_66ecc:                               ; preds = %dec_label_pc_66ec7, %dec_label_pc_66e66
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_67031:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_6706f:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_670ad:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_670df

dec_label_pc_670df:                               ; preds = %dec_label_pc_670df, %dec_label_pc_670ad
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %4 = mul i64 %storemerge24.reload, 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 8
  %7 = add i64 %3, %4
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_67155.preheader, label %dec_label_pc_670df

dec_label_pc_67155.preheader:                     ; preds = %dec_label_pc_670df
  %10 = ptrtoint ptr %data to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_67122

dec_label_pc_67122:                               ; preds = %dec_label_pc_67122, %dec_label_pc_67155.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %11 = mul i64 %storemerge3.reload, 8
  %12 = add i64 %11, %10
  %13 = add i64 %11, %2
  %14 = inttoptr i64 %13 to ptr
  %15 = load i64, ptr %14, align 8
  %16 = inttoptr i64 %12 to ptr
  store i64 %15, ptr %16, align 8
  %17 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_6715f, label %dec_label_pc_67122

dec_label_pc_6715f:                               ; preds = %dec_label_pc_67122
  call void @printStructLine(ptr %data)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_67183, label %dec_label_pc_6717e

dec_label_pc_6717e:                               ; preds = %dec_label_pc_6715f
  call void @__stack_chk_fail()
  br label %dec_label_pc_67183

dec_label_pc_67183:                               ; preds = %dec_label_pc_6717e, %dec_label_pc_6715f
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

