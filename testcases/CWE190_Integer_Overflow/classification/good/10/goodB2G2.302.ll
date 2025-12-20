@global_var_816f8 = external constant [3 x i8]
@global_var_81710 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_9797:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_9821, label %dec_label_pc_97e2

dec_label_pc_97e2:                                ; preds = %dec_label_pc_9797
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_816f8, ptr nonnull %stack_var_-18)
  %.pr = load i32, ptr @global_var_bc0a0, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_9821, label %dec_label_pc_97ec

dec_label_pc_97ec:                                ; preds = %dec_label_pc_97e2
  %6 = load i8, ptr %stack_var_-18, align 1
  %7 = icmp eq i8 %6, 127
  br i1 %7, label %dec_label_pc_9812, label %dec_label_pc_97f4

dec_label_pc_97f4:                                ; preds = %dec_label_pc_97ec
  %8 = add i8 %6, 1
  store i8 %8, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_9821

dec_label_pc_9812:                                ; preds = %dec_label_pc_97ec
  call void @printLine(ptr @global_var_81710)
  br label %dec_label_pc_9821

dec_label_pc_9821:                                ; preds = %dec_label_pc_9797, %dec_label_pc_9812, %dec_label_pc_97f4, %dec_label_pc_97e2
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_9836, label %dec_label_pc_9831

dec_label_pc_9831:                                ; preds = %dec_label_pc_9821
  call void @__stack_chk_fail()
  br label %dec_label_pc_9836

dec_label_pc_9836:                                ; preds = %dec_label_pc_9831, %dec_label_pc_9821
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

