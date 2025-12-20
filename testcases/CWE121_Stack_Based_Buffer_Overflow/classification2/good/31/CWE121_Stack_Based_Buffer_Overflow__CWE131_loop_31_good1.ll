@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4c21f:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %data_-88 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4c270

dec_label_pc_4c270:                               ; preds = %dec_label_pc_4c270, %dec_label_pc_4c21f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4c287, label %dec_label_pc_4c270

dec_label_pc_4c287:                               ; preds = %dec_label_pc_4c270
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 48
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %5 = add i64 %0, %constexpr3
  %6 = and i64 %5, -16
  store ptr null, ptr %data_-88, align 8
  %7 = add i64 %4, -48
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_4c306

dec_label_pc_4c306:                               ; preds = %dec_label_pc_4c287, %dec_label_pc_4c306
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge2.reload to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %6
  %11 = add i64 %7, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i64 %10 to ptr
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %data_-88, align 8
  %16 = ptrtoint ptr %15 to i64
  %17 = add i64 %16, 1
  %18 = inttoptr i64 %17 to ptr
  store ptr %18, ptr %data_-88, align 8
  %19 = icmp ugt ptr %18, inttoptr (i64 9 to ptr)
  store ptr %18, ptr %storemerge2.reg2mem, align 8
  br i1 %19, label %dec_label_pc_4c32f, label %dec_label_pc_4c306

dec_label_pc_4c32f:                               ; preds = %dec_label_pc_4c306
  %20 = inttoptr i64 %6 to ptr
  %21 = load i32, ptr %20, align 16
  call void @printIntLine(i32 %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_4c351, label %dec_label_pc_4c34c

dec_label_pc_4c34c:                               ; preds = %dec_label_pc_4c32f
  call void @__stack_chk_fail()
  br label %dec_label_pc_4c351

dec_label_pc_4c351:                               ; preds = %dec_label_pc_4c34c, %dec_label_pc_4c32f
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

