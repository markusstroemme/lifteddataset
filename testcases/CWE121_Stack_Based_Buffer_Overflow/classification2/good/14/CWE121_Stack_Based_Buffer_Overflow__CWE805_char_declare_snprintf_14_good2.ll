@global_var_b72f3 = external constant [3 x i8]
@global_var_e6094 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_bf89:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_e6094, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_bf89.dec_label_pc_bfca_crit_edge, label %dec_label_pc_bfb2

dec_label_pc_bf89.dec_label_pc_bfca_crit_edge:    ; preds = %dec_label_pc_bf89
  %.pre = bitcast ptr %dataGoodBuffer_-240 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_bfca

dec_label_pc_bfb2:                                ; preds = %dec_label_pc_bf89
  %4 = ptrtoint ptr %stack_var_-232 to i64
  %5 = trunc i64 %4 to i8
  %6 = insertvalue [100 x i8] undef, i8 %5, 0
  store [100 x i8] %6, ptr %dataGoodBuffer_-240, align 8
  %7 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store ptr %7, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_bfca

dec_label_pc_bfca:                                ; preds = %dec_label_pc_bf89.dec_label_pc_bfca_crit_edge, %dec_label_pc_bfb2
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %10 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %11 = load i64, ptr %.pre-phi.reload, align 8
  %12 = inttoptr i64 %11 to ptr
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %12, i32 100, ptr @global_var_b72f3, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %12)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_c02f, label %dec_label_pc_c02a

dec_label_pc_c02a:                                ; preds = %dec_label_pc_bfca
  call void @__stack_chk_fail()
  br label %dec_label_pc_c02f

dec_label_pc_c02f:                                ; preds = %dec_label_pc_c02a, %dec_label_pc_bfca
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

