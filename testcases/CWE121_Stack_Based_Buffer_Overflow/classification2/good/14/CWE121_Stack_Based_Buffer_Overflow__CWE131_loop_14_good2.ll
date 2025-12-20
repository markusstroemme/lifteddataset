@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_ef084 = external local_unnamed_addr global i32
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4b4bc:
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem3 = alloca ptr, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-72, align 8
  %2 = load i32, ptr @global_var_ef084, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  store ptr null, ptr %.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4b570, label %dec_label_pc_4b51c

dec_label_pc_4b51c:                               ; preds = %dec_label_pc_4b4bc, %dec_label_pc_4b51c
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %5 = icmp eq i64 %rsp.0.reload, %0
  %6 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4b533, label %dec_label_pc_4b51c

dec_label_pc_4b533:                               ; preds = %dec_label_pc_4b51c
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 48
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %7 = add i64 %0, %constexpr3
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store ptr %9, ptr %stack_var_-72, align 8
  store ptr %9, ptr %.reg2mem, align 8
  br label %dec_label_pc_4b570

dec_label_pc_4b570:                               ; preds = %dec_label_pc_4b533, %dec_label_pc_4b4bc
  %10 = ptrtoint ptr %stack_var_-8 to i64
  %.reload = load ptr, ptr %.reg2mem, align 8
  %11 = add i64 %10, -48
  store ptr %.reload, ptr %.reg2mem3, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_4b5a2

dec_label_pc_4b5a2:                               ; preds = %dec_label_pc_4b5a2, %dec_label_pc_4b570
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload4 = load ptr, ptr %.reg2mem3, align 8
  %12 = mul i64 %storemerge2.reload, 4
  %13 = ptrtoint ptr %.reload4 to i64
  %14 = add i64 %12, %13
  %15 = add i64 %11, %12
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = inttoptr i64 %14 to ptr
  store i32 %17, ptr %18, align 4
  %19 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %19, 10
  %20 = load ptr, ptr %stack_var_-72, align 8
  store ptr %20, ptr %.reg2mem3, align 8
  store i64 %19, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4b5cb, label %dec_label_pc_4b5a2

dec_label_pc_4b5cb:                               ; preds = %dec_label_pc_4b5a2
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_4b5ed, label %dec_label_pc_4b5e8

dec_label_pc_4b5e8:                               ; preds = %dec_label_pc_4b5cb
  call void @__stack_chk_fail()
  br label %dec_label_pc_4b5ed

dec_label_pc_4b5ed:                               ; preds = %dec_label_pc_4b5e8, %dec_label_pc_4b5cb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

