@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define void @anon3() local_unnamed_addr {
dec_label_pc_66ece:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_66f19

dec_label_pc_66f19:                               ; preds = %dec_label_pc_66f19, %dec_label_pc_66ece
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_66f30, label %dec_label_pc_66f19

dec_label_pc_66f30:                               ; preds = %dec_label_pc_66f19
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
  br label %dec_label_pc_66f9d

dec_label_pc_66f9d:                               ; preds = %dec_label_pc_66f9d, %dec_label_pc_66f30
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %9 = icmp eq i64 %rsp.1.reload, %8
  %10 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %10, ptr %rsp.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_66fb4, label %dec_label_pc_66f9d

dec_label_pc_66fb4:                               ; preds = %dec_label_pc_66f9d
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
  %11 = add i64 %8, %constexpr18
  %12 = and i64 %11, -16
  %13 = inttoptr i64 %12 to ptr
  call void @anon0(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_6701a, label %dec_label_pc_67015

dec_label_pc_67015:                               ; preds = %dec_label_pc_66fb4
  call void @__stack_chk_fail()
  br label %dec_label_pc_6701a

dec_label_pc_6701a:                               ; preds = %dec_label_pc_67015, %dec_label_pc_66fb4
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_67050:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_6708e:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_67185:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_671b7

dec_label_pc_671b7:                               ; preds = %dec_label_pc_671b7, %dec_label_pc_67185
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
  br i1 %exitcond5, label %dec_label_pc_6722d.preheader, label %dec_label_pc_671b7

dec_label_pc_6722d.preheader:                     ; preds = %dec_label_pc_671b7
  %10 = ptrtoint ptr %data to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_671fa

dec_label_pc_671fa:                               ; preds = %dec_label_pc_671fa, %dec_label_pc_6722d.preheader
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
  br i1 %exitcond, label %dec_label_pc_67237, label %dec_label_pc_671fa

dec_label_pc_67237:                               ; preds = %dec_label_pc_671fa
  call void @printStructLine(ptr %data)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_6725b, label %dec_label_pc_67256

dec_label_pc_67256:                               ; preds = %dec_label_pc_67237
  call void @__stack_chk_fail()
  br label %dec_label_pc_6725b

dec_label_pc_6725b:                               ; preds = %dec_label_pc_67256, %dec_label_pc_67237
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

