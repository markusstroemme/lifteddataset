@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4aaef:
  %storemerge3.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %storemerge2.in.in.in.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-72, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  store i64 %0, ptr %rsp.1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_4abd9, label %dec_label_pc_4ab52

dec_label_pc_4ab52:                               ; preds = %dec_label_pc_4aaef, %dec_label_pc_4ab52
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %0
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4ab69, label %dec_label_pc_4ab52

dec_label_pc_4ab69:                               ; preds = %dec_label_pc_4ab52
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %6 = sub i64 %0, %constexpr1
  store i64 %6, ptr %storemerge2.in.in.in.reg2mem, align 8
  br label %dec_label_pc_4ac2d

dec_label_pc_4abd9:                               ; preds = %dec_label_pc_4aaef, %dec_label_pc_4abd9
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %0
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_4abf0, label %dec_label_pc_4abd9

dec_label_pc_4abf0:                               ; preds = %dec_label_pc_4abd9
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 48
  %9 = sub i64 %0, %constexpr3
  store i64 %9, ptr %storemerge2.in.in.in.reg2mem, align 8
  br label %dec_label_pc_4ac2d

dec_label_pc_4ac2d:                               ; preds = %dec_label_pc_4abf0, %dec_label_pc_4ab69
  %10 = ptrtoint ptr %stack_var_-8 to i64
  %storemerge2.in.in.in.reload = load i64, ptr %storemerge2.in.in.in.reg2mem, align 8
  %storemerge2.in.in = add i64 %storemerge2.in.in.in.reload, 15
  %storemerge2.in = and i64 %storemerge2.in.in, -16
  %storemerge2 = inttoptr i64 %storemerge2.in to ptr
  store ptr %storemerge2, ptr %stack_var_-72, align 8
  %11 = add i64 %10, -48
  store ptr %storemerge2, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_4ac5f

dec_label_pc_4ac5f:                               ; preds = %dec_label_pc_4ac5f, %dec_label_pc_4ac2d
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %12 = mul i64 %storemerge3.reload, 4
  %13 = ptrtoint ptr %.reload to i64
  %14 = add i64 %12, %13
  %15 = add i64 %11, %12
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = inttoptr i64 %14 to ptr
  store i32 %17, ptr %18, align 4
  %19 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %19, 10
  %20 = load ptr, ptr %stack_var_-72, align 8
  store ptr %20, ptr %.reg2mem, align 8
  store i64 %19, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4ac88, label %dec_label_pc_4ac5f

dec_label_pc_4ac88:                               ; preds = %dec_label_pc_4ac5f
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_4acaa, label %dec_label_pc_4aca5

dec_label_pc_4aca5:                               ; preds = %dec_label_pc_4ac88
  call void @__stack_chk_fail()
  br label %dec_label_pc_4acaa

dec_label_pc_4acaa:                               ; preds = %dec_label_pc_4aca5, %dec_label_pc_4ac88
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

