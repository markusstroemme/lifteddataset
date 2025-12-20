@global_var_8aa10 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5c129:
  %stack_var_-42 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-42 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_5c1b4, label %dec_label_pc_5c1af

dec_label_pc_5c1af:                               ; preds = %dec_label_pc_5c129
  call void @__stack_chk_fail()
  br label %dec_label_pc_5c1b4

dec_label_pc_5c1b4:                               ; preds = %dec_label_pc_5c1af, %dec_label_pc_5c129
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_5c253:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 4
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, 32767
  br i1 %4, label %dec_label_pc_5c297, label %dec_label_pc_5c277

dec_label_pc_5c277:                               ; preds = %dec_label_pc_5c253
  %5 = zext i16 %3 to i32
  %6 = mul i32 %5, 65536
  %sext = add i32 %6, 65536
  %7 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_5c2a6

dec_label_pc_5c297:                               ; preds = %dec_label_pc_5c253
  call void @printLine(ptr @global_var_8aa10)
  br label %dec_label_pc_5c2a6

dec_label_pc_5c2a6:                               ; preds = %dec_label_pc_5c297, %dec_label_pc_5c277
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

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

