@global_var_89024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_19508:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_89024, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_19508.dec_label_pc_19549_crit_edge, label %dec_label_pc_19531

dec_label_pc_19508.dec_label_pc_19549_crit_edge:  ; preds = %dec_label_pc_19508
  %.pre = bitcast ptr %dataBadBuffer_-192 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_19549

dec_label_pc_19531:                               ; preds = %dec_label_pc_19508
  %4 = ptrtoint ptr %stack_var_-184 to i64
  %5 = trunc i64 %4 to i8
  %6 = insertvalue [50 x i8] undef, i8 %5, 0
  store [50 x i8] %6, ptr %dataBadBuffer_-192, align 8
  %7 = bitcast ptr %dataBadBuffer_-192 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store ptr %7, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_19549

dec_label_pc_19549:                               ; preds = %dec_label_pc_19508.dec_label_pc_19549_crit_edge, %dec_label_pc_19531
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %10 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %11 = load i64, ptr %.pre-phi.reload, align 8
  %12 = inttoptr i64 %11 to ptr
  %13 = bitcast ptr %stack_var_-120 to ptr
  %14 = call ptr @strcat(ptr %12, ptr nonnull %13)
  call void @printLine(ptr %12)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_1959d, label %dec_label_pc_19598

dec_label_pc_19598:                               ; preds = %dec_label_pc_19549
  call void @__stack_chk_fail()
  br label %dec_label_pc_1959d

dec_label_pc_1959d:                               ; preds = %dec_label_pc_19598, %dec_label_pc_19549
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

