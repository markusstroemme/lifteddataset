@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_9f024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1e582:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1e5ce

dec_label_pc_1e5ce:                               ; preds = %dec_label_pc_1e5ce, %dec_label_pc_1e582
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1e5e5, label %dec_label_pc_1e5ce

dec_label_pc_1e5e5:                               ; preds = %dec_label_pc_1e5ce
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1e650

dec_label_pc_1e650:                               ; preds = %dec_label_pc_1e650, %dec_label_pc_1e5e5
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_1e667, label %dec_label_pc_1e650

dec_label_pc_1e667:                               ; preds = %dec_label_pc_1e650
  %8 = load i32, ptr @global_var_9f024, align 4
  %9 = icmp eq i32 %8, 5
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_1e6c4, label %dec_label_pc_1e6af

dec_label_pc_1e6af:                               ; preds = %dec_label_pc_1e667
  %11 = and i64 %5, -16
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 16
  store ptr %12, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_1e6c4

dec_label_pc_1e6c4:                               ; preds = %dec_label_pc_1e6af, %dec_label_pc_1e667
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %13 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %14 = bitcast ptr %dataGoodBuffer_-144.0.reload to ptr
  %15 = call ptr @memmove(ptr %14, ptr nonnull %stack_var_-120, i32 100)
  %16 = ptrtoint ptr %dataGoodBuffer_-144.0.reload to i64
  %17 = add i64 %16, 99
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  call void @printLine(ptr %dataGoodBuffer_-144.0.reload)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_1e72b, label %dec_label_pc_1e726

dec_label_pc_1e726:                               ; preds = %dec_label_pc_1e6c4
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e72b

dec_label_pc_1e72b:                               ; preds = %dec_label_pc_1e726, %dec_label_pc_1e6c4
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

