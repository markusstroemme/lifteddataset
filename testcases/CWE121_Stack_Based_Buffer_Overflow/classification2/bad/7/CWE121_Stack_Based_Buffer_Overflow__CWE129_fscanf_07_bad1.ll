@global_var_b61e0 = external constant [32 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_ef024 = external local_unnamed_addr global i32
@global_var_b61d8 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_21beb:
  %.reg2mem = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef024, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_21c3a, label %dec_label_pc_21c18

dec_label_pc_21c18:                               ; preds = %dec_label_pc_21beb
  %4 = load ptr, ptr @global_var_ef090, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_b61d8)
  %.pre = load i32, ptr @global_var_ef024, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_21c3a

dec_label_pc_21c3a:                               ; preds = %dec_label_pc_21c18, %dec_label_pc_21beb
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_21cb5, label %dec_label_pc_21ca6

dec_label_pc_21ca6:                               ; preds = %dec_label_pc_21c3a
  call void @printLine(ptr @global_var_b61e0)
  br label %dec_label_pc_21cb5

dec_label_pc_21cb5:                               ; preds = %dec_label_pc_21ca6, %dec_label_pc_21c3a
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_21cca, label %dec_label_pc_21cc5

dec_label_pc_21cc5:                               ; preds = %dec_label_pc_21cb5
  call void @__stack_chk_fail()
  br label %dec_label_pc_21cca

dec_label_pc_21cca:                               ; preds = %dec_label_pc_21cc5, %dec_label_pc_21cb5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

