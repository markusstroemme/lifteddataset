@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_689a8:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_689f3

dec_label_pc_689f3:                               ; preds = %dec_label_pc_689f3, %dec_label_pc_689a8
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_68a0a, label %dec_label_pc_689f3

dec_label_pc_68a0a:                               ; preds = %dec_label_pc_689f3
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
  br label %dec_label_pc_68a77

dec_label_pc_68a77:                               ; preds = %dec_label_pc_68a77, %dec_label_pc_68a0a
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_68a8e, label %dec_label_pc_68a77

dec_label_pc_68a8e:                               ; preds = %dec_label_pc_68a77
  %8 = add i64 %4, 15
  %9 = and i64 %8, -16
  call void @anon1(i64 %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_68afc, label %dec_label_pc_68af7

dec_label_pc_68af7:                               ; preds = %dec_label_pc_68a8e
  call void @__stack_chk_fail()
  br label %dec_label_pc_68afc

dec_label_pc_68afc:                               ; preds = %dec_label_pc_68af7, %dec_label_pc_68a8e
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_68c69:
  %storemerge2.reg2mem = alloca ptr, align 8
  %storemerge13.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store ptr null, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_68ca9

dec_label_pc_68ca9:                               ; preds = %dec_label_pc_68c69, %dec_label_pc_68ca9
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
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br i1 %12, label %dec_label_pc_68cec, label %dec_label_pc_68ca9

dec_label_pc_68cec:                               ; preds = %dec_label_pc_68ca9, %dec_label_pc_68cec
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %13 = ptrtoint ptr %storemerge2.reload to i64
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %myStruct
  %16 = add i64 %14, %2
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add i64 %13, 1
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp ugt ptr %21, inttoptr (i64 99 to ptr)
  store ptr %21, ptr %storemerge2.reg2mem, align 8
  br i1 %22, label %dec_label_pc_68d29, label %dec_label_pc_68cec

dec_label_pc_68d29:                               ; preds = %dec_label_pc_68cec
  %23 = inttoptr i64 %myStruct to ptr
  call void @printStructLine(ptr %23)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  br i1 %25, label %dec_label_pc_68d4d, label %dec_label_pc_68d48

dec_label_pc_68d48:                               ; preds = %dec_label_pc_68d29
  call void @__stack_chk_fail()
  br label %dec_label_pc_68d4d

dec_label_pc_68d4d:                               ; preds = %dec_label_pc_68d48, %dec_label_pc_68d29
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

