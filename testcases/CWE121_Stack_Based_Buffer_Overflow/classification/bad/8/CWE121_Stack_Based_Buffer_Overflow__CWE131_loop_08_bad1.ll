@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define i32 @staticReturnsTrue.818() local_unnamed_addr {
dec_label_pc_49ba5:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_49bc3:
  %storemerge2.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-72, align 8
  %2 = call i32 @staticReturnsTrue.818()
  %3 = icmp eq i32 %2, 0
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_49c7a, label %dec_label_pc_49c26

dec_label_pc_49c26:                               ; preds = %dec_label_pc_49bc3, %dec_label_pc_49c26
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %0
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_49c3d, label %dec_label_pc_49c26

dec_label_pc_49c3d:                               ; preds = %dec_label_pc_49c26
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %6 = add i64 %0, %constexpr3
  %7 = and i64 %6, -16
  %8 = inttoptr i64 %7 to ptr
  store ptr %8, ptr %stack_var_-72, align 8
  br label %dec_label_pc_49c7a

dec_label_pc_49c7a:                               ; preds = %dec_label_pc_49c3d, %dec_label_pc_49bc3
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %10 = add i64 %9, -48
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_49cac

dec_label_pc_49cac:                               ; preds = %dec_label_pc_49cac, %dec_label_pc_49c7a
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %11 = mul i64 %storemerge2.reload, 4
  %12 = load ptr, ptr %stack_var_-72, align 8
  %13 = ptrtoint ptr %12 to i64
  %14 = add i64 %11, %13
  %15 = add i64 %10, %11
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = inttoptr i64 %14 to ptr
  store i32 %17, ptr %18, align 4
  %19 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %19, 10
  store i64 %19, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_49cd5, label %dec_label_pc_49cac

dec_label_pc_49cd5:                               ; preds = %dec_label_pc_49cac
  %20 = load ptr, ptr %stack_var_-72, align 8
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_49cf7, label %dec_label_pc_49cf2

dec_label_pc_49cf2:                               ; preds = %dec_label_pc_49cd5
  call void @__stack_chk_fail()
  br label %dec_label_pc_49cf7

dec_label_pc_49cf7:                               ; preds = %dec_label_pc_49cf2, %dec_label_pc_49cd5
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

