@global_var_b7278 = external constant [3 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_b197:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_b1b5:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_b1b5.dec_label_pc_b1f9_crit_edge, label %dec_label_pc_b1e1

dec_label_pc_b1b5.dec_label_pc_b1f9_crit_edge:    ; preds = %dec_label_pc_b1b5
  %.pre = bitcast ptr %dataBadBuffer_-192 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_b1f9

dec_label_pc_b1e1:                                ; preds = %dec_label_pc_b1b5
  %3 = ptrtoint ptr %stack_var_-184 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [50 x i8] undef, i8 %4, 0
  store [50 x i8] %5, ptr %dataBadBuffer_-192, align 8
  %6 = bitcast ptr %dataBadBuffer_-192 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_b1f9

dec_label_pc_b1f9:                                ; preds = %dec_label_pc_b1b5.dec_label_pc_b1f9_crit_edge, %dec_label_pc_b1e1
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = load i64, ptr %.pre-phi.reload, align 8
  %11 = inttoptr i64 %10 to ptr
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %11, i32 100, ptr @global_var_b7278, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %11)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_b25e, label %dec_label_pc_b259

dec_label_pc_b259:                                ; preds = %dec_label_pc_b1f9
  call void @__stack_chk_fail()
  br label %dec_label_pc_b25e

dec_label_pc_b25e:                                ; preds = %dec_label_pc_b259, %dec_label_pc_b1f9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

