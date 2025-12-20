@global_var_fff = external global ptr
@global_var_90e28 = external constant [3 x i8]
@global_var_1000 = external global i32
@global_var_b4038 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_343cb:
  %.reg2mem = alloca ptr, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_34414

dec_label_pc_34414:                               ; preds = %dec_label_pc_34414, %dec_label_pc_343cb
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3442b, label %dec_label_pc_34414

dec_label_pc_3442b:                               ; preds = %dec_label_pc_34414
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %data_-88, align 8
  %7 = bitcast ptr %stack_var_-80 to ptr
  store i64 %5, ptr %7, align 8
  %8 = load i32, ptr @global_var_b4038, align 4
  %9 = icmp eq i32 %8, 0
  store ptr %6, ptr %.reg2mem, align 8
  br i1 %9, label %dec_label_pc_3449b, label %dec_label_pc_3447a

dec_label_pc_3447a:                               ; preds = %dec_label_pc_3442b
  %10 = inttoptr i64 %5 to ptr
  %11 = call ptr @memset(ptr %10, i32 65, i32 99)
  %12 = add i64 %5, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %.pre = load ptr, ptr %stack_var_-80, align 8
  store ptr %.pre, ptr %.reg2mem, align 8
  br label %dec_label_pc_3449b

dec_label_pc_3449b:                               ; preds = %dec_label_pc_3447a, %dec_label_pc_3442b
  %.reload = load ptr, ptr %.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %14 = call i32 @strlen(ptr %.reload)
  %15 = bitcast ptr %stack_var_-72 to ptr
  %16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %15, i32 %14, ptr @global_var_90e28, ptr %.reload)
  call void @printLine(ptr %.reload)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_34520, label %dec_label_pc_3451b

dec_label_pc_3451b:                               ; preds = %dec_label_pc_3449b
  call void @__stack_chk_fail()
  br label %dec_label_pc_34520

dec_label_pc_34520:                               ; preds = %dec_label_pc_3451b, %dec_label_pc_3449b
  ret void
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

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

