@global_var_84e90 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_260df:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  call void @anon0(ptr nonnull %stack_var_-72)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_261c5, label %dec_label_pc_261c0

dec_label_pc_261c0:                               ; preds = %dec_label_pc_260df
  call void @__stack_chk_fail()
  br label %dec_label_pc_261c5

dec_label_pc_261c5:                               ; preds = %dec_label_pc_261c0, %dec_label_pc_260df
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_2625a:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 9223372036854775807
  br i1 %4, label %dec_label_pc_262a1, label %dec_label_pc_26286

dec_label_pc_26286:                               ; preds = %dec_label_pc_2625a
  %5 = add i64 %3, 1
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_262b0

dec_label_pc_262a1:                               ; preds = %dec_label_pc_2625a
  call void @printLine(ptr @global_var_84e90)
  br label %dec_label_pc_262b0

dec_label_pc_262b0:                               ; preds = %dec_label_pc_262a1, %dec_label_pc_26286
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

