@global_var_fff = external global ptr
@global_var_b7953 = external constant [21 x i8]
@global_var_bb9a8 = external constant [4 x i8]
@global_var_e6094 = external local_unnamed_addr global i32
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3ae72:
  %storemerge3.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-456 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-456 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3aec0

dec_label_pc_3aec0:                               ; preds = %dec_label_pc_3aec0, %dec_label_pc_3ae72
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3aed7, label %dec_label_pc_3aec0

dec_label_pc_3aed7:                               ; preds = %dec_label_pc_3aec0
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3af47

dec_label_pc_3af47:                               ; preds = %dec_label_pc_3af47, %dec_label_pc_3aed7
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3af5e, label %dec_label_pc_3af47

dec_label_pc_3af5e:                               ; preds = %dec_label_pc_3af47
  %7 = load i32, ptr @global_var_e6094, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %dec_label_pc_3afba, label %dec_label_pc_3afa9

dec_label_pc_3afa9:                               ; preds = %dec_label_pc_3af5e
  call void @printLine(ptr @global_var_b7953)
  br label %dec_label_pc_3afc8

dec_label_pc_3afba:                               ; preds = %dec_label_pc_3af5e
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  %11 = bitcast ptr %stack_var_-456 to ptr
  store i64 %10, ptr %11, align 8
  br label %dec_label_pc_3afc8

dec_label_pc_3afc8:                               ; preds = %dec_label_pc_3afba, %dec_label_pc_3afa9
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %13, i64 0, i64 50)
  %14 = add i64 %12, -416
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_3afec

dec_label_pc_3afec:                               ; preds = %dec_label_pc_3afc8, %dec_label_pc_3afec
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %15 = ptrtoint ptr %storemerge3.reload to i64
  %16 = mul i64 %15, 4
  %17 = load ptr, ptr %stack_var_-456, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = add i64 %16, %18
  %20 = add i64 %14, %16
  %21 = inttoptr i64 %20 to ptr
  %22 = load i32, ptr %21, align 4
  %23 = inttoptr i64 %19 to ptr
  store i32 %22, ptr %23, align 4
  %24 = add i64 %15, 1
  %25 = inttoptr i64 %24 to ptr
  %26 = icmp ugt ptr %25, inttoptr (i64 99 to ptr)
  store ptr %25, ptr %storemerge3.reg2mem, align 8
  br i1 %26, label %dec_label_pc_3b027, label %dec_label_pc_3afec

dec_label_pc_3b027:                               ; preds = %dec_label_pc_3afec
  %27 = load ptr, ptr %stack_var_-456, align 8
  %28 = load i32, ptr %27, align 4
  call void @printIntLine(i32 %28)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %1, %29
  br i1 %30, label %dec_label_pc_3b04c, label %dec_label_pc_3b047

dec_label_pc_3b047:                               ; preds = %dec_label_pc_3b027
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b04c

dec_label_pc_3b04c:                               ; preds = %dec_label_pc_3b047, %dec_label_pc_3b027
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

