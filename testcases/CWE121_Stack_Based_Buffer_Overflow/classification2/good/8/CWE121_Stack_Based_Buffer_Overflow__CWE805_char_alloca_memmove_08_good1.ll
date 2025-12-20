@global_var_1000 = external global ptr
@global_var_8112a = external constant [21 x i8]
@global_var_fff = external global i32

define i32 @staticReturnsFalse.188() local_unnamed_addr {
dec_label_pc_1eac2:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1ec7f:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1eccb

dec_label_pc_1eccb:                               ; preds = %dec_label_pc_1eccb, %dec_label_pc_1ec7f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1ece2, label %dec_label_pc_1eccb

dec_label_pc_1ece2:                               ; preds = %dec_label_pc_1eccb
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1ed4d

dec_label_pc_1ed4d:                               ; preds = %dec_label_pc_1ed4d, %dec_label_pc_1ece2
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1ed64, label %dec_label_pc_1ed4d

dec_label_pc_1ed64:                               ; preds = %dec_label_pc_1ed4d
  %7 = call i32 @staticReturnsFalse.188()
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_1edc0, label %dec_label_pc_1edaf

dec_label_pc_1edaf:                               ; preds = %dec_label_pc_1ed64
  call void @printLine(ptr @global_var_8112a)
  br label %dec_label_pc_1edd5

dec_label_pc_1edc0:                               ; preds = %dec_label_pc_1ed64
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_1edd5

dec_label_pc_1edd5:                               ; preds = %dec_label_pc_1edc0, %dec_label_pc_1edaf
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
  br i1 %19, label %dec_label_pc_1ee3c, label %dec_label_pc_1ee37

dec_label_pc_1ee37:                               ; preds = %dec_label_pc_1edd5
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ee3c

dec_label_pc_1ee3c:                               ; preds = %dec_label_pc_1ee37, %dec_label_pc_1edd5
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

