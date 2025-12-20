@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32
@global_var_ef040 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_49053:
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem3 = alloca ptr, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-72, align 8
  %2 = load i32, ptr @global_var_ef040, align 4
  %3 = icmp eq i32 %2, 0
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  store ptr null, ptr %.reg2mem, align 8
  br i1 %3, label %dec_label_pc_49106, label %dec_label_pc_490b2

dec_label_pc_490b2:                               ; preds = %dec_label_pc_49053, %dec_label_pc_490b2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %0
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_490c9, label %dec_label_pc_490b2

dec_label_pc_490c9:                               ; preds = %dec_label_pc_490b2
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %6 = add i64 %0, %constexpr3
  %7 = and i64 %6, -16
  %8 = inttoptr i64 %7 to ptr
  store ptr %8, ptr %stack_var_-72, align 8
  store ptr %8, ptr %.reg2mem, align 8
  br label %dec_label_pc_49106

dec_label_pc_49106:                               ; preds = %dec_label_pc_490c9, %dec_label_pc_49053
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %.reload = load ptr, ptr %.reg2mem, align 8
  %10 = add i64 %9, -48
  store ptr %.reload, ptr %.reg2mem3, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_49138

dec_label_pc_49138:                               ; preds = %dec_label_pc_49138, %dec_label_pc_49106
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload4 = load ptr, ptr %.reg2mem3, align 8
  %11 = mul i64 %storemerge2.reload, 4
  %12 = ptrtoint ptr %.reload4 to i64
  %13 = add i64 %11, %12
  %14 = add i64 %10, %11
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i64 %13 to ptr
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %18, 10
  %19 = load ptr, ptr %stack_var_-72, align 8
  store ptr %19, ptr %.reg2mem3, align 8
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_49161, label %dec_label_pc_49138

dec_label_pc_49161:                               ; preds = %dec_label_pc_49138
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  br i1 %22, label %dec_label_pc_49183, label %dec_label_pc_4917e

dec_label_pc_4917e:                               ; preds = %dec_label_pc_49161
  call void @__stack_chk_fail()
  br label %dec_label_pc_49183

dec_label_pc_49183:                               ; preds = %dec_label_pc_4917e, %dec_label_pc_49161
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

