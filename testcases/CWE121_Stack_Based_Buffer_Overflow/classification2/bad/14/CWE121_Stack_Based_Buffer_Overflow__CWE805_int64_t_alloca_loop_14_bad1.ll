@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_e6094 = external local_unnamed_addr global i32
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_12913:
  %storemerge1.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-856 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_12961

dec_label_pc_12961:                               ; preds = %dec_label_pc_12961, %dec_label_pc_12913
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_12978, label %dec_label_pc_12961

dec_label_pc_12978:                               ; preds = %dec_label_pc_12961
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
  br label %dec_label_pc_129e8

dec_label_pc_129e8:                               ; preds = %dec_label_pc_129e8, %dec_label_pc_12978
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_129ff, label %dec_label_pc_129e8

dec_label_pc_129ff:                               ; preds = %dec_label_pc_129e8
  %8 = load i32, ptr @global_var_e6094, align 4
  %9 = icmp eq i32 %8, 5
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_12a58, label %dec_label_pc_12a4a

dec_label_pc_12a4a:                               ; preds = %dec_label_pc_129ff
  %11 = add i64 %4, 15
  %12 = and i64 %11, -16
  store i64 %12, ptr %stack_var_-856, align 8
  br label %dec_label_pc_12a58

dec_label_pc_12a58:                               ; preds = %dec_label_pc_12a4a, %dec_label_pc_129ff
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %14, i64 0, i64 100)
  %15 = add i64 %13, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_12a7c

dec_label_pc_12a7c:                               ; preds = %dec_label_pc_12a58, %dec_label_pc_12a7c
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %16 = ptrtoint ptr %storemerge1.reload to i64
  %17 = mul i64 %16, 8
  %18 = load i64, ptr %stack_var_-856, align 8
  %19 = add i64 %17, %18
  %20 = add i64 %15, %17
  %21 = inttoptr i64 %20 to ptr
  %22 = load i64, ptr %21, align 8
  %23 = inttoptr i64 %19 to ptr
  store i64 %22, ptr %23, align 8
  %24 = add i64 %16, 1
  %25 = inttoptr i64 %24 to ptr
  %26 = icmp ugt ptr %25, inttoptr (i64 99 to ptr)
  store ptr %25, ptr %storemerge1.reg2mem, align 8
  br i1 %26, label %dec_label_pc_12ab9, label %dec_label_pc_12a7c

dec_label_pc_12ab9:                               ; preds = %dec_label_pc_12a7c
  %27 = load i64, ptr %stack_var_-856, align 8
  %28 = inttoptr i64 %27 to ptr
  %29 = load i64, ptr %28, align 8
  call void @printLongLongLine(i64 %29)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %1, %30
  br i1 %31, label %dec_label_pc_12ae0, label %dec_label_pc_12adb

dec_label_pc_12adb:                               ; preds = %dec_label_pc_12ab9
  call void @__stack_chk_fail()
  br label %dec_label_pc_12ae0

dec_label_pc_12ae0:                               ; preds = %dec_label_pc_12adb, %dec_label_pc_12ab9
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

