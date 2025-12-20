@global_var_81978 = external constant [3 x i8]
@global_var_8197b = external constant [21 x i8]
@global_var_81990 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0c4 = external local_unnamed_addr global i32

define void @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_ab03:
  %0 = load i32, ptr @global_var_bc0c4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_ab2f, label %dec_label_pc_ab1e

dec_label_pc_ab1e:                                ; preds = %dec_label_pc_ab03
  call void @printLine(ptr @global_var_8197b)
  br label %dec_label_pc_ab62

dec_label_pc_ab2f:                                ; preds = %dec_label_pc_ab03
  %2 = icmp eq i8 %data, 127
  br i1 %2, label %dec_label_pc_ab53, label %dec_label_pc_ab35

dec_label_pc_ab35:                                ; preds = %dec_label_pc_ab2f
  %3 = add i8 %data, 1
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_ab62

dec_label_pc_ab53:                                ; preds = %dec_label_pc_ab2f
  call void @printLine(ptr @global_var_81990)
  br label %dec_label_pc_ab62

dec_label_pc_ab62:                                ; preds = %dec_label_pc_ab53, %dec_label_pc_ab35, %dec_label_pc_ab1e
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_ab65:
  %stack_var_-17 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-17, align 1
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_81978, ptr nonnull %stack_var_-17)
  store i32 0, ptr @global_var_bc0c4, align 4
  %3 = load i8, ptr %stack_var_-17, align 1
  call void @anon0(i8 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_abd3, label %dec_label_pc_abce

dec_label_pc_abce:                                ; preds = %dec_label_pc_ab65
  call void @__stack_chk_fail()
  br label %dec_label_pc_abd3

dec_label_pc_abd3:                                ; preds = %dec_label_pc_abce, %dec_label_pc_ab65
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

