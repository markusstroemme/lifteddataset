@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_30136 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_d3d0:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_d41b

dec_label_pc_d41b:                                ; preds = %dec_label_pc_d41b, %dec_label_pc_d3d0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_d432, label %dec_label_pc_d41b

dec_label_pc_d432:                                ; preds = %dec_label_pc_d41b
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
  br label %dec_label_pc_d49f

dec_label_pc_d49f:                                ; preds = %dec_label_pc_d49f, %dec_label_pc_d432
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_d4b6, label %dec_label_pc_d49f

dec_label_pc_d4b6:                                ; preds = %dec_label_pc_d49f
  %8 = add i64 %4, 15
  %9 = and i64 %8, -16
  call void @anon1(i64 %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_d524, label %dec_label_pc_d51f

dec_label_pc_d51f:                                ; preds = %dec_label_pc_d4b6
  call void @__stack_chk_fail()
  br label %dec_label_pc_d524

dec_label_pc_d524:                                ; preds = %dec_label_pc_d51f, %dec_label_pc_d4b6
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_d691:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_d6d1

dec_label_pc_d6d1:                                ; preds = %dec_label_pc_d691, %dec_label_pc_d6d1
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %2 = ptrtoint ptr %storemerge1.reload to i64
  %3 = mul i64 %2, 8
  %4 = add i64 %3, %0
  %5 = add i64 %4, -816
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 8
  %7 = add i64 %4, -812
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = add i64 %2, 1
  %10 = inttoptr i64 %9 to ptr
  %11 = icmp ugt ptr %10, inttoptr (i64 99 to ptr)
  store ptr %10, ptr %storemerge1.reg2mem, align 8
  br i1 %11, label %dec_label_pc_d707, label %dec_label_pc_d6d1

dec_label_pc_d707:                                ; preds = %dec_label_pc_d6d1
  %12 = inttoptr i64 %myStruct to ptr
  %13 = call ptr @memmove(ptr %12, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %14 = inttoptr i64 %myStruct to ptr
  call void @printStructLine(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_d749, label %dec_label_pc_d744

dec_label_pc_d744:                                ; preds = %dec_label_pc_d707
  call void @__stack_chk_fail()
  br label %dec_label_pc_d749

dec_label_pc_d749:                                ; preds = %dec_label_pc_d744, %dec_label_pc_d707
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

