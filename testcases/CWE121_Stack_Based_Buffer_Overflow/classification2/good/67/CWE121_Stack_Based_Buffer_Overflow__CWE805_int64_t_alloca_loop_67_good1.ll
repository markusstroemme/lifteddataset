@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_1000 = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_17b69:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_17bb4

dec_label_pc_17bb4:                               ; preds = %dec_label_pc_17bb4, %dec_label_pc_17b69
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_17bcb, label %dec_label_pc_17bb4

dec_label_pc_17bcb:                               ; preds = %dec_label_pc_17bb4
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
  br label %dec_label_pc_17c38

dec_label_pc_17c38:                               ; preds = %dec_label_pc_17c38, %dec_label_pc_17bcb
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_17c4f, label %dec_label_pc_17c38

dec_label_pc_17c4f:                               ; preds = %dec_label_pc_17c38
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
  %8 = add i64 %5, %constexpr18
  %9 = and i64 %8, -16
  call void @anon0(i64 %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_17cbd, label %dec_label_pc_17cb8

dec_label_pc_17cb8:                               ; preds = %dec_label_pc_17c4f
  call void @__stack_chk_fail()
  br label %dec_label_pc_17cbd

dec_label_pc_17cbd:                               ; preds = %dec_label_pc_17cb8, %dec_label_pc_17c4f
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_17d91:
  %0 = alloca i1, align 1
  %storemerge1.reg2mem = alloca ptr, align 8
  %1 = load i1, ptr %0, align 1
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = add i64 %2, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_17de8

dec_label_pc_17de8:                               ; preds = %dec_label_pc_17d91, %dec_label_pc_17de8
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %myStruct
  %9 = add i64 %5, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_17e25, label %dec_label_pc_17de8

dec_label_pc_17e25:                               ; preds = %dec_label_pc_17de8
  %16 = select i1 %1, i64 -800, i64 800
  %17 = ptrtoint ptr %stack_var_-824 to i64
  %18 = add i64 %16, %17
  call void @printLongLongLine(i64 %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %3, %19
  br i1 %20, label %dec_label_pc_17e4c, label %dec_label_pc_17e47

dec_label_pc_17e47:                               ; preds = %dec_label_pc_17e25
  call void @__stack_chk_fail()
  br label %dec_label_pc_17e4c

dec_label_pc_17e4c:                               ; preds = %dec_label_pc_17e47, %dec_label_pc_17e25
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

