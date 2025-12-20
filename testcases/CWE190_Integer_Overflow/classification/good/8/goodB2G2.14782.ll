@global_var_88f40 = external constant [4 x i8]
@global_var_88f60 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.1475() local_unnamed_addr {
dec_label_pc_4ed67:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4eed9:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @staticReturnsTrue.1475()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4ef2a, label %dec_label_pc_4ef08

dec_label_pc_4ef08:                               ; preds = %dec_label_pc_4eed9
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_88f40, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_4ef2a

dec_label_pc_4ef2a:                               ; preds = %dec_label_pc_4ef08, %dec_label_pc_4eed9
  %5 = call i32 @staticReturnsTrue.1475()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_4ef71, label %dec_label_pc_4ef38

dec_label_pc_4ef38:                               ; preds = %dec_label_pc_4ef2a
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_4ef62, label %dec_label_pc_4ef42

dec_label_pc_4ef42:                               ; preds = %dec_label_pc_4ef38
  %9 = add i16 %7, 1
  store i16 %9, ptr %stack_var_-20, align 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_4ef71

dec_label_pc_4ef62:                               ; preds = %dec_label_pc_4ef38
  call void @printLine(ptr @global_var_88f60)
  br label %dec_label_pc_4ef71

dec_label_pc_4ef71:                               ; preds = %dec_label_pc_4ef62, %dec_label_pc_4ef42, %dec_label_pc_4ef2a
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_4ef86, label %dec_label_pc_4ef81

dec_label_pc_4ef81:                               ; preds = %dec_label_pc_4ef71
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ef86

dec_label_pc_4ef86:                               ; preds = %dec_label_pc_4ef81, %dec_label_pc_4ef71
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

