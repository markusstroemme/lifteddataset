@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_579ba:
  %storemerge.in.in.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %data_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  store i64 %0, ptr %rsp.1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_57aa4, label %dec_label_pc_57a1d

dec_label_pc_57a1d:                               ; preds = %dec_label_pc_579ba, %dec_label_pc_57a1d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %0
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_57a34, label %dec_label_pc_57a1d

dec_label_pc_57a34:                               ; preds = %dec_label_pc_57a1d
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %6 = sub i64 %0, %constexpr1
  store i64 %6, ptr %storemerge.in.in.reg2mem, align 8
  br label %dec_label_pc_57af8

dec_label_pc_57aa4:                               ; preds = %dec_label_pc_579ba, %dec_label_pc_57aa4
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %0
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_57abb, label %dec_label_pc_57aa4

dec_label_pc_57abb:                               ; preds = %dec_label_pc_57aa4
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 48
  %9 = sub i64 %0, %constexpr3
  store i64 %9, ptr %storemerge.in.in.reg2mem, align 8
  br label %dec_label_pc_57af8

dec_label_pc_57af8:                               ; preds = %dec_label_pc_57abb, %dec_label_pc_57a34
  %storemerge.in.in.reload = load i64, ptr %storemerge.in.in.reg2mem, align 8
  %storemerge.in = add i64 %storemerge.in.in.reload, 15
  %storemerge = and i64 %storemerge.in, -16
  store i64 0, ptr %stack_var_-56, align 8
  %10 = inttoptr i64 %storemerge to ptr
  %11 = call ptr @memmove(ptr %10, ptr nonnull %stack_var_-56, i32 40)
  %12 = inttoptr i64 %storemerge to ptr
  %13 = load i32, ptr %12, align 16
  call void @printIntLine(i32 %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_57b5a, label %dec_label_pc_57b55

dec_label_pc_57b55:                               ; preds = %dec_label_pc_57af8
  call void @__stack_chk_fail()
  br label %dec_label_pc_57b5a

dec_label_pc_57b5a:                               ; preds = %dec_label_pc_57b55, %dec_label_pc_57af8
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

