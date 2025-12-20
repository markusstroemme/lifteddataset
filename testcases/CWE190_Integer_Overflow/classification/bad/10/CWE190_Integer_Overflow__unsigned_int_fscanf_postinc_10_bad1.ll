@global_var_8afc8 = external constant [3 x i8]
@global_var_8ca9e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5dc55:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5dcc6, label %dec_label_pc_5dca3

dec_label_pc_5dca3:                               ; preds = %dec_label_pc_5dc55
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_8afc8, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_bc0a0, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_5dcc6, label %dec_label_pc_5dcad

dec_label_pc_5dcad:                               ; preds = %dec_label_pc_5dca3
  %6 = load i32, ptr %stack_var_-24, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %7)
  br label %dec_label_pc_5dcc6

dec_label_pc_5dcc6:                               ; preds = %dec_label_pc_5dc55, %dec_label_pc_5dcad, %dec_label_pc_5dca3
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_5dcdb, label %dec_label_pc_5dcd6

dec_label_pc_5dcd6:                               ; preds = %dec_label_pc_5dcc6
  call void @__stack_chk_fail()
  br label %dec_label_pc_5dcdb

dec_label_pc_5dcdb:                               ; preds = %dec_label_pc_5dcd6, %dec_label_pc_5dcc6
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8ca9e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

