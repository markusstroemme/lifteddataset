@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_9f070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_ab32:
  %storemerge2.reg2mem = alloca ptr, align 8
  %.in.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_ab7e

dec_label_pc_ab7e:                                ; preds = %dec_label_pc_ab7e, %dec_label_pc_ab32
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_ab95, label %dec_label_pc_ab7e

dec_label_pc_ab95:                                ; preds = %dec_label_pc_ab7e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_ac00

dec_label_pc_ac00:                                ; preds = %dec_label_pc_ac00, %dec_label_pc_ab95
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_ac17, label %dec_label_pc_ac00

dec_label_pc_ac17:                                ; preds = %dec_label_pc_ac00
  %9 = load i32, ptr @global_var_9f070, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_ac73, label %dec_label_pc_ac5e

dec_label_pc_ac5e:                                ; preds = %dec_label_pc_ac17
  %11 = inttoptr i64 %6 to ptr
  %12 = bitcast ptr %stack_var_-152 to ptr
  store i64 %6, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_ac73

dec_label_pc_ac73:                                ; preds = %dec_label_pc_ac5e, %dec_label_pc_ac17
  %13 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %14 = load ptr, ptr %stack_var_-152, align 8
  %15 = ptrtoint ptr %stack_var_-120 to i64
  store ptr %14, ptr %.in.reg2mem, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_ac9a

dec_label_pc_ac9a:                                ; preds = %dec_label_pc_ac73, %dec_label_pc_ac9a
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %.in.reload = load ptr, ptr %.in.reg2mem, align 8
  %16 = ptrtoint ptr %.in.reload to i64
  %17 = ptrtoint ptr %storemerge2.reload to i64
  %18 = add i64 %17, %16
  %19 = add i64 %17, %15
  %20 = inttoptr i64 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = inttoptr i64 %18 to ptr
  store i8 %21, ptr %22, align 1
  %23 = add i64 %17, 1
  %24 = inttoptr i64 %23 to ptr
  %25 = icmp ugt ptr %24, inttoptr (i64 99 to ptr)
  %26 = load ptr, ptr %stack_var_-152, align 8
  store ptr %26, ptr %.in.reg2mem, align 8
  store ptr %24, ptr %storemerge2.reg2mem, align 8
  br i1 %25, label %dec_label_pc_acd0, label %dec_label_pc_ac9a

dec_label_pc_acd0:                                ; preds = %dec_label_pc_ac9a
  %27 = ptrtoint ptr %26 to i64
  %28 = add i64 %27, 99
  %29 = inttoptr i64 %28 to ptr
  store i8 0, ptr %29, align 1
  %30 = load ptr, ptr %stack_var_-152, align 8
  call void @printLine(ptr %30)
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %1, %31
  br i1 %32, label %dec_label_pc_ad02, label %dec_label_pc_acfd

dec_label_pc_acfd:                                ; preds = %dec_label_pc_acd0
  call void @__stack_chk_fail()
  br label %dec_label_pc_ad02

dec_label_pc_ad02:                                ; preds = %dec_label_pc_acfd, %dec_label_pc_acd0
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

declare i64 @__readfsqword(i64) local_unnamed_addr

