@global_var_fff = external global ptr
@0 = external global i32
@global_var_1000 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_5c199:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_5c1d3:
  %rax.0.reg2mem = alloca i64, align 8
  %.lcssa.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-104 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-104 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5c21c

dec_label_pc_5c21c:                               ; preds = %dec_label_pc_5c21c, %dec_label_pc_5c1d3
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5c233, label %dec_label_pc_5c21c

dec_label_pc_5c233:                               ; preds = %dec_label_pc_5c21c
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %stack_var_-104, align 8
  %7 = call i64 @anon0(ptr nonnull %stack_var_-104)
  store i64 0, ptr %stack_var_-72, align 8
  %8 = load ptr, ptr %stack_var_-104, align 8
  %9 = call i32 @strlen(ptr %8)
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %stack_var_-104, align 8
  store ptr %11, ptr %.lcssa.reg2mem, align 8
  br i1 %10, label %dec_label_pc_5c2fe, label %dec_label_pc_5c2d4.lr.ph

dec_label_pc_5c2d4.lr.ph:                         ; preds = %dec_label_pc_5c233
  %12 = sext i32 %9 to i64
  %13 = ptrtoint ptr %stack_var_-72 to i64
  store ptr %11, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_5c2d4

dec_label_pc_5c2d4:                               ; preds = %dec_label_pc_5c2d4.lr.ph, %dec_label_pc_5c2d4
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %14 = ptrtoint ptr %.reload to i64
  %15 = add i64 %storemerge2.reload, %14
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = add i64 %storemerge2.reload, %13
  %19 = inttoptr i64 %18 to ptr
  store i8 %17, ptr %19, align 1
  %20 = add nuw i64 %storemerge2.reload, 1
  %21 = icmp ult i64 %20, %12
  %22 = load ptr, ptr %stack_var_-104, align 8
  store ptr %22, ptr %.reg2mem, align 8
  store i64 %20, ptr %storemerge2.reg2mem, align 8
  store ptr %22, ptr %.lcssa.reg2mem, align 8
  br i1 %21, label %dec_label_pc_5c2d4, label %dec_label_pc_5c2fe

dec_label_pc_5c2fe:                               ; preds = %dec_label_pc_5c2d4, %dec_label_pc_5c233
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %1, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_5c323, label %dec_label_pc_5c31e

dec_label_pc_5c31e:                               ; preds = %dec_label_pc_5c2fe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5c323

dec_label_pc_5c323:                               ; preds = %dec_label_pc_5c31e, %dec_label_pc_5c2fe
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

