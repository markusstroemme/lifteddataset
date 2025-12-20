@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4e16e:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-24 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4e1bf

dec_label_pc_4e1bf:                               ; preds = %dec_label_pc_4e1bf, %dec_label_pc_4e16e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4e1d6, label %dec_label_pc_4e1bf

dec_label_pc_4e1d6:                               ; preds = %dec_label_pc_4e1bf
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  store i64 %5, ptr %stack_var_-24, align 8
  %6 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_4e234, label %dec_label_pc_4e22f

dec_label_pc_4e22f:                               ; preds = %dec_label_pc_4e1d6
  call void @__stack_chk_fail()
  br label %dec_label_pc_4e234

dec_label_pc_4e234:                               ; preds = %dec_label_pc_4e22f, %dec_label_pc_4e1d6
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_4e313:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rdi = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataVoidPtr to i64
  %3 = add i64 %0, -48
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_4e377

dec_label_pc_4e377:                               ; preds = %dec_label_pc_4e313, %dec_label_pc_4e377
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge2.reload to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %5, %2
  %7 = add i64 %3, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i64 %6 to ptr
  store i32 %9, ptr %10, align 4
  %11 = add i64 %4, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 9 to ptr)
  store ptr %12, ptr %storemerge2.reg2mem, align 8
  br i1 %13, label %dec_label_pc_4e3a0, label %dec_label_pc_4e377

dec_label_pc_4e3a0:                               ; preds = %dec_label_pc_4e377
  %14 = bitcast ptr %rdi to ptr
  %15 = load i32, ptr %14, align 8
  call void @printIntLine(i32 %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_4e3c2, label %dec_label_pc_4e3bd

dec_label_pc_4e3bd:                               ; preds = %dec_label_pc_4e3a0
  call void @__stack_chk_fail()
  br label %dec_label_pc_4e3c2

dec_label_pc_4e3c2:                               ; preds = %dec_label_pc_4e3bd, %dec_label_pc_4e3a0
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

