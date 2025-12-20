@staticTrue = external local_unnamed_addr global i32
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3924b:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @staticTrue, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_392b8, label %dec_label_pc_39269

dec_label_pc_39269:                               ; preds = %dec_label_pc_3924b
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 1, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 2, ptr %5, align 4
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %dec_label_pc_392a2, label %dec_label_pc_39295

dec_label_pc_39295:                               ; preds = %dec_label_pc_39269
  %7 = inttoptr i64 %2 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 8)
  br label %dec_label_pc_392a2

dec_label_pc_392a2:                               ; preds = %dec_label_pc_39295, %dec_label_pc_39269
  %.pr = load i32, ptr @staticTrue, align 4
  %9 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_392b8, label %dec_label_pc_392ac

dec_label_pc_392ac:                               ; preds = %dec_label_pc_392a2
  call void @printStructLine(ptr %3)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_392b8

dec_label_pc_392b8:                               ; preds = %dec_label_pc_3924b, %dec_label_pc_392ac, %dec_label_pc_392a2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

