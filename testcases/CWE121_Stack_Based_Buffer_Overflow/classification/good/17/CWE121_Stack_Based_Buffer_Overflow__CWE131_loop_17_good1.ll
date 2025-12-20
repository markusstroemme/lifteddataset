@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4bd96.preheader:
  %storemerge3.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4bd96

dec_label_pc_4bd96:                               ; preds = %dec_label_pc_4bd96, %dec_label_pc_4bd96.preheader
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4be4c.preheader, label %dec_label_pc_4bd96

dec_label_pc_4be4c.preheader:                     ; preds = %dec_label_pc_4bd96
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 48
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %5 = add i64 %0, %constexpr3
  %6 = and i64 %5, -16
  %7 = add i64 %4, -48
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_4be2a

dec_label_pc_4be2a:                               ; preds = %dec_label_pc_4be2a, %dec_label_pc_4be4c.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %8 = mul i64 %storemerge3.reload, 4
  %9 = add i64 %8, %6
  %10 = add i64 %7, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i64 %9 to ptr
  store i32 %12, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %14, 10
  store i64 %14, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4be53, label %dec_label_pc_4be2a

dec_label_pc_4be53:                               ; preds = %dec_label_pc_4be2a
  %15 = inttoptr i64 %6 to ptr
  %16 = load i32, ptr %15, align 16
  call void @printIntLine(i32 %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_4be75, label %dec_label_pc_4be70

dec_label_pc_4be70:                               ; preds = %dec_label_pc_4be53
  call void @__stack_chk_fail()
  br label %dec_label_pc_4be75

dec_label_pc_4be75:                               ; preds = %dec_label_pc_4be70, %dec_label_pc_4be53
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

