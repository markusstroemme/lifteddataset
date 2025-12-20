@global_var_1000 = external global ptr
@global_var_813c8 = external constant [3 x i8]
@global_var_fff = external global i32
@global_var_9f03c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_398ab:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_398f7

dec_label_pc_398f7:                               ; preds = %dec_label_pc_398f7, %dec_label_pc_398ab
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3990e, label %dec_label_pc_398f7

dec_label_pc_3990e:                               ; preds = %dec_label_pc_398f7
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_39979

dec_label_pc_39979:                               ; preds = %dec_label_pc_39979, %dec_label_pc_3990e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_39990, label %dec_label_pc_39979

dec_label_pc_39990:                               ; preds = %dec_label_pc_39979
  %7 = load i32, ptr @global_var_9f03c, align 4
  %8 = icmp eq i32 %7, 5
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_399ed, label %dec_label_pc_399d8

dec_label_pc_399d8:                               ; preds = %dec_label_pc_39990
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %10 = add i64 %4, %constexpr5
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 16
  store ptr %12, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_399ed

dec_label_pc_399ed:                               ; preds = %dec_label_pc_399d8, %dec_label_pc_39990
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %13 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %dataGoodBuffer_-144.0.reload, i32 100, ptr @global_var_813c8, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %dataGoodBuffer_-144.0.reload)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_39a52, label %dec_label_pc_39a4d

dec_label_pc_39a4d:                               ; preds = %dec_label_pc_399ed
  call void @__stack_chk_fail()
  br label %dec_label_pc_39a52

dec_label_pc_39a52:                               ; preds = %dec_label_pc_39a4d, %dec_label_pc_399ed
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

