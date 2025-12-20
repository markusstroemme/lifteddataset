@global_var_1000 = external global ptr
@global_var_813e0 = external constant [3 x i8]
@global_var_fff = external global i32

define i32 @staticReturnsTrue.346() local_unnamed_addr {
dec_label_pc_39a73:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_39a91:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_39add

dec_label_pc_39add:                               ; preds = %dec_label_pc_39add, %dec_label_pc_39a91
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_39af4, label %dec_label_pc_39add

dec_label_pc_39af4:                               ; preds = %dec_label_pc_39add
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_39b5f

dec_label_pc_39b5f:                               ; preds = %dec_label_pc_39b5f, %dec_label_pc_39af4
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_39b76, label %dec_label_pc_39b5f

dec_label_pc_39b76:                               ; preds = %dec_label_pc_39b5f
  %8 = call i32 @staticReturnsTrue.346()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_39bd6, label %dec_label_pc_39bc1

dec_label_pc_39bc1:                               ; preds = %dec_label_pc_39b76
  %10 = and i64 %5, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_39bd6

dec_label_pc_39bd6:                               ; preds = %dec_label_pc_39bc1, %dec_label_pc_39b76
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %12 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %dataGoodBuffer_-144.0.reload, i32 100, ptr @global_var_813e0, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %dataGoodBuffer_-144.0.reload)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_39c3b, label %dec_label_pc_39c36

dec_label_pc_39c36:                               ; preds = %dec_label_pc_39bd6
  call void @__stack_chk_fail()
  br label %dec_label_pc_39c3b

dec_label_pc_39c3b:                               ; preds = %dec_label_pc_39c36, %dec_label_pc_39bd6
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

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

