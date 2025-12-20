@global_var_9f050 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4bb8a:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_9f050, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4bb8a.dec_label_pc_4bbca_crit_edge, label %dec_label_pc_4bbb2

dec_label_pc_4bb8a.dec_label_pc_4bbca_crit_edge:  ; preds = %dec_label_pc_4bb8a
  %.pre = bitcast ptr %dataBadBuffer_-192 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4bbca

dec_label_pc_4bbb2:                               ; preds = %dec_label_pc_4bb8a
  %3 = ptrtoint ptr %stack_var_-184 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [50 x i8] undef, i8 %4, 0
  store [50 x i8] %5, ptr %dataBadBuffer_-192, align 8
  %6 = bitcast ptr %dataBadBuffer_-192 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4bbca

dec_label_pc_4bbca:                               ; preds = %dec_label_pc_4bb8a.dec_label_pc_4bbca_crit_edge, %dec_label_pc_4bbb2
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = load i64, ptr %.pre-phi.reload, align 8
  %11 = inttoptr i64 %10 to ptr
  %12 = call ptr @memmove(ptr %11, ptr nonnull %stack_var_-120, i32 100)
  %13 = add i64 %10, 99
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %15 = load i64, ptr %.pre-phi.reload, align 8
  %16 = inttoptr i64 %15 to ptr
  call void @printLine(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_4bc31, label %dec_label_pc_4bc2c

dec_label_pc_4bc2c:                               ; preds = %dec_label_pc_4bbca
  call void @__stack_chk_fail()
  br label %dec_label_pc_4bc31

dec_label_pc_4bc31:                               ; preds = %dec_label_pc_4bc2c, %dec_label_pc_4bbca
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

