@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_e6090 = external local_unnamed_addr global i32
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1ae3e:
  %0 = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %data_-856 = alloca ptr, align 8
  %2 = ptrtoint ptr %data_-856 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 %2, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1ae8c

dec_label_pc_1ae8c:                               ; preds = %dec_label_pc_1ae8c, %dec_label_pc_1ae3e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %2
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_1aea3, label %dec_label_pc_1ae8c

dec_label_pc_1aea3:                               ; preds = %dec_label_pc_1ae8c
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %6 = sub i64 %2, %constexpr1
  %7 = add i64 %6, 15
  %8 = and i64 %7, -16
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %9 = sub i64 %6, %constexpr8
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1af13

dec_label_pc_1af13:                               ; preds = %dec_label_pc_1af13, %dec_label_pc_1aea3
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %10 = icmp eq i64 %rsp.1.reload, %9
  %11 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %11, ptr %rsp.1.reg2mem, align 8
  br i1 %10, label %dec_label_pc_1af2a, label %dec_label_pc_1af13

dec_label_pc_1af2a:                               ; preds = %dec_label_pc_1af13
  %12 = inttoptr i64 %8 to ptr
  %13 = load i32, ptr @global_var_e6090, align 4
  %14 = icmp eq i32 %13, 0
  %spec.select = select i1 %14, ptr %1, ptr %12
  %15 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %15, i64 0, i64 100)
  %16 = call ptr @memcpy(ptr %spec.select, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %17 = load i64, ptr %spec.select, align 8
  call void @printLongLongLine(i64 %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %3, %18
  br i1 %19, label %dec_label_pc_1afde, label %dec_label_pc_1afd9

dec_label_pc_1afd9:                               ; preds = %dec_label_pc_1af2a
  call void @__stack_chk_fail()
  br label %dec_label_pc_1afde

dec_label_pc_1afde:                               ; preds = %dec_label_pc_1afd9, %dec_label_pc_1af2a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

