@global_var_1000 = external global ptr
@global_var_fff = external global i32

define i32 @staticReturnsTrue.187() local_unnamed_addr {
dec_label_pc_1eab3:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1ead1:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1eb1d

dec_label_pc_1eb1d:                               ; preds = %dec_label_pc_1eb1d, %dec_label_pc_1ead1
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1eb34, label %dec_label_pc_1eb1d

dec_label_pc_1eb34:                               ; preds = %dec_label_pc_1eb1d
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1eb9f

dec_label_pc_1eb9f:                               ; preds = %dec_label_pc_1eb9f, %dec_label_pc_1eb34
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_1ebb6, label %dec_label_pc_1eb9f

dec_label_pc_1ebb6:                               ; preds = %dec_label_pc_1eb9f
  %8 = call i32 @staticReturnsTrue.187()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_1ec16, label %dec_label_pc_1ec01

dec_label_pc_1ec01:                               ; preds = %dec_label_pc_1ebb6
  %10 = and i64 %5, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_1ec16

dec_label_pc_1ec16:                               ; preds = %dec_label_pc_1ec01, %dec_label_pc_1ebb6
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %12 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %13 = bitcast ptr %dataGoodBuffer_-144.0.reload to ptr
  %14 = call ptr @memmove(ptr %13, ptr nonnull %stack_var_-120, i32 100)
  %15 = ptrtoint ptr %dataGoodBuffer_-144.0.reload to i64
  %16 = add i64 %15, 99
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  call void @printLine(ptr %dataGoodBuffer_-144.0.reload)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_1ec7d, label %dec_label_pc_1ec78

dec_label_pc_1ec78:                               ; preds = %dec_label_pc_1ec16
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ec7d

dec_label_pc_1ec7d:                               ; preds = %dec_label_pc_1ec78, %dec_label_pc_1ec16
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

