@global_var_81a38 = external constant [3 x i8]
@global_var_8ca93 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_9e42:
  %.reg2mem = alloca i8, align 1
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr inttoptr (i64 576212 to ptr), align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i8 33, ptr %.reg2mem, align 1
  br i1 %3, label %dec_label_pc_9e99, label %dec_label_pc_9e6c

dec_label_pc_9e6c:                                ; preds = %dec_label_pc_9e42
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_81a38, ptr nonnull %stack_var_-18)
  %.pre = load i8, ptr %stack_var_-18, align 1
  %phitmp = add i8 %.pre, 1
  store i8 %phitmp, ptr %.reg2mem, align 1
  br label %dec_label_pc_9e99

dec_label_pc_9e99:                                ; preds = %dec_label_pc_9e42, %dec_label_pc_9e6c
  %.reload = load i8, ptr %.reg2mem, align 1
  store i8 %.reload, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_9eca, label %dec_label_pc_9ec5

dec_label_pc_9ec5:                                ; preds = %dec_label_pc_9e99
  call void @__stack_chk_fail()
  br label %dec_label_pc_9eca

dec_label_pc_9eca:                                ; preds = %dec_label_pc_9ec5, %dec_label_pc_9e99
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca93, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

